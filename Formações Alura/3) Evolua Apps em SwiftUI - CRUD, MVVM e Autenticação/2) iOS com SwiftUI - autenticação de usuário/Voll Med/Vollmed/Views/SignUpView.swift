//
//  SignUpView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 15/02/24.
//

import SwiftUI

struct SignUpView: View {
    
    let service = WebService()
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var cpf: String = ""
    @State private var phoneNumber: String = ""
    @State private var healthPlan: String
    @State private var password: String = ""
    
    @State private var showAlert: Bool = false
    @State private var isPatientRegistered: Bool = false
    @State private var navigateToSignInView: Bool = false
    
    let healthPlans: [String] = [
        "Amil","Unimed", "Bradesco Saúde", "SulAmérica", "Hapvida", "Notredame Intermédica", "São Francisco Saúde", "Golden Cross", "Medial Saúde", "América Saúde", "Outro"
    ]
    
    init() {
        self.healthPlan = healthPlans[0]
    }
    
    func register() async {
        let patient = Patient(id: nil, cpf: cpf, name: name, email: email, password: password, phoneNumber: phoneNumber, healthPlan: healthPlan)
        
        do {
            if let _ = try await service.registerPatient(patient: patient) {
                isPatientRegistered = true
            } else {
                isPatientRegistered = false
            }
        } catch {
            isPatientRegistered = false
            print("Ocorreu um erro ao cadastrar um paciente: \(error)")
        }
        showAlert = true
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 16.0) {
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 36.0, alignment: .center)
                    .padding(.vertical)
                
                Text("Olá, boas-vindas!")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.accent)
                
                Text("Insira seus dados para criar uma conta.")
                    .font(.title3)
                    .foregroundStyle(.gray)
                    .padding(.bottom)
                
                TitleView(titulo: "Nome")
                TextField("Insira seu nome completo", text: $name)
                    .padding(14)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14.0)
                    .autocorrectionDisabled()
                
                TitleView(titulo: "Email")
                TextField("Insira seu email", text: $email)
                    .padding(14)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14.0)
                    .autocorrectionDisabled()
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                TitleView(titulo: "CPF")
                TextField("Insira seu CPF", text: $cpf)
                    .padding(14)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14.0)
                    .keyboardType(.numberPad)
                
                TitleView(titulo: "Telefone")
                TextField("Insira seu telefone", text: $phoneNumber)
                    .padding(14)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14.0)
                    .keyboardType(.numberPad)
                
                TitleView(titulo: "Senha")
                SecureField("Insira sua senha", text: $password)
                    .padding(14)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14.0)
                
                TitleView(titulo: "Selecione o seu plano de saúde")
                Picker("Plano de Saúde", selection: $healthPlan) {
                    ForEach(healthPlans, id: \.self) { healthPlan in
                        Text(healthPlan)
                    }
                }
                
                Button(action: {
                    Task {
                        await register()
                    }
                }, label: {
                    ButtonView(text: "Cadastrar")
                })
                
                NavigationLink {
                    SignInView()
                } label: {
                    Text("Já possui uma conta? Faça o login!")
                        .bold()
                        .foregroundStyle(.accent)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .navigationBarBackButtonHidden()
        .padding()
        .alert(isPatientRegistered ? "Sucesso!" : "Algo deu errado!", isPresented: $showAlert, presenting: $isPatientRegistered) { _ in
            Button(action: {
                if isPatientRegistered {
                    navigateToSignInView = true
                }
            }, label: {
                Text("OK")
            })
        } message: { _ in
            if isPatientRegistered {
                Text("O paciente foi criado com sucesso!")
            } else {
                Text("Houve um erro ao cadastrar o paciente. Por favor tente novamente.")
            }
        }
        .navigationDestination(isPresented: $navigateToSignInView) {
            SignInView()
        }
    }
}

#Preview {
    SignUpView()
}

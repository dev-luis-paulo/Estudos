//
//  SignInView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 15/02/24.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 36.0, alignment: .center)
            Text("Olá!")
                .font(.title2)
                .bold()
                .foregroundStyle(.accent)
            
            Text("Preencha para acessar sua conta.")
                .font(.title3)
                .foregroundStyle(.gray)
                .padding(.bottom)
            
            TitleView(titulo: "Email")
            insertFieldView(placeholder: "Insira seu email", secure: false, keyboardType: .emailAddress, autocorrectionDisabled: true, text: $email)
                .textInputAutocapitalization(.never)
            
            TitleView(titulo: "Senha")
            insertFieldView(placeholder: "Insira sua senha", secure: true, text: $password)
            
            //insertFieldView(tipo: "text", placeholder: "Insira seu email", text: $email, keyboardType: .emailAddress, autoCorrectionDisable: true)

            Button {
                //
            } label: {
                ButtonView(text: "Entrar")
            }
            
            NavigationLink {
                SignUpView()
            } label: {
                Text("Ainda não possui uma conta? Cadastre-se")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignInView()
}

//
//  CancelAppointmentView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 12/02/24.
//

import SwiftUI

struct CancelAppointmentView: View {
    
    var appointmentID: String
    let service = WebService()
    
    @State private var reasonToCancel = ""
    @State private var showAlert = false
    @State private var isAppointmentCanceled = false
    @Environment(\.presentationMode) var presentationMode
    
    func cancelAppointment() async {
        do {
            if try await service.cancelAppointment(appointmentID: appointmentID, reasonToCancel: reasonToCancel) {
                print("Consulta cancelada com sucesso")
                isAppointmentCanceled = true
            } else {
                isAppointmentCanceled = false
            }
        } catch {
            print("Ocorreu um erro ao desmarcar a consulta: \(error)")
            isAppointmentCanceled = false
        }
        showAlert = true
    }
    
    var body: some View {
        VStack(spacing: 16.0) {
            Text("Conte-nos o motivo do cancelamento da sua consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            TextEditor(text: $reasonToCancel)
                .padding()
                .font(.title3)
                .foregroundStyle(.accent)
                .scrollContentBackground(.hidden)
                .background(Color(.lightBlue).opacity(0.18))
                .cornerRadius(16.0)
                .frame(maxHeight: 300)
            
            Button(action: {
                Task {
                    await cancelAppointment()
                }
            }, label: {
                ButtonView(text: "Cancelar consulta", buttonType: .cancel)
            })
        }
        .padding()
        .navigationTitle("Cancelar consulta")
        .navigationBarTitleDisplayMode(.large)
        .alert(isAppointmentCanceled ? "Sucesso!" : "Ocorreu um erro!", isPresented: $showAlert, presenting: isAppointmentCanceled) { _ in
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("OK")
            })
        } message: { isCanceled in
            if isCanceled {
                Text("A consulta foi cancelada com sucesso!")
            } else {
                Text("Erro ao cancelar!")
            }
        }
    }
}

#Preview {
    CancelAppointmentView(appointmentID: "1234")
}

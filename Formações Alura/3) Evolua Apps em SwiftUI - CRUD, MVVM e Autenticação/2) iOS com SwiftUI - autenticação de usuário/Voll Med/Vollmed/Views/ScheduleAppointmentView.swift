//
//  ScheduleAppointmentView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 07/02/24.
//

import SwiftUI

struct ScheduleAppointmentView: View {
    
    let service = WebService()
    
    var specialistID: String
    var isRescheduleView: Bool
    var appointmentID: String?
    
    @State private var selectedDate = Date()
    @State private var showAlert = false
    @State private var isAppointmentScheduled = false
    @Environment(\.presentationMode) var presentationMode
    
    init(specialistID: String, isRescheduleView: Bool = false, appointmentID: String? = nil) {
        self.specialistID = specialistID
        self.isRescheduleView = isRescheduleView
        self.appointmentID = appointmentID
    }
    
    func rescheduleAppointment() async {
        guard let appointmentID else {
            print("Houve um erro ao obter o ID da consulta")
            return
        }
        do {
            if let _ = try await service.rescheduleAppointment(appointmentID: appointmentID, date: selectedDate.convertToString()){
                isAppointmentScheduled = true
            } else {
                isAppointmentScheduled = false
            }
        } catch {
            print("Ocorreu um erro ao remarcar consulta: \(error)")
            isAppointmentScheduled = false
        }
        showAlert = true
    }

    let today = Date()
    
    func scheduleAppointment() async {
        do {
            if let _ = try await service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.convertToString()) {
                isAppointmentScheduled = true
            } else {
                isAppointmentScheduled = false
            }
        } catch {
            isAppointmentScheduled = false
            print("Occoreu um erro ao agendar consulta: \(error)")
        }
        showAlert = true
    }
    
    var body: some View {
        VStack {
            Text("Selecione a data e o horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            DatePicker("Escolha a data da consulta", selection: $selectedDate, in: today...)
                .datePickerStyle(.graphical)
            
            Button(action: {
                Task {
                    if isRescheduleView {
                        await rescheduleAppointment()
                    } else {
                        await scheduleAppointment()
                    }
                }
            }, label: {
                ButtonView(text: isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
            })
        }
        .padding()
        .navigationTitle(isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
        .navigationBarTitleDisplayMode(.large)
        .onAppear {
            UIDatePicker.appearance().minuteInterval = 15
        }
        .alert(isAppointmentScheduled ? "Sucesso!" : "Ocorreu um erro!", isPresented: $showAlert, presenting: isAppointmentScheduled) { _ in
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("OK")
            })
        } message: { isScheduled in
            if isScheduled {
                Text("A consulta foi \(isRescheduleView ? "reagendada" : "agendada") com sucesso!")
            } else {
                Text("Erro ao \(isRescheduleView ? "reagendar" : "agendar"). Tente novamente ou entre em contato via telefone.")
            }
        }

    }
}

#Preview {
    ScheduleAppointmentView(specialistID: "123")
}

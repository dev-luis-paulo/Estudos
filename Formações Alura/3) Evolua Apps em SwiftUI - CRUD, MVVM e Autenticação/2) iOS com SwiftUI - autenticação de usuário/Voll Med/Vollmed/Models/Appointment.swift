//
//  Appointment.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 10/02/24.
//

import Foundation

struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}

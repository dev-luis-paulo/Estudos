//
//  Login.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 17/02/24.
//

import Foundation

struct LoginRequest: Codable {
    let email: String
    let password: String
    
    enum CodingKeys: String, CodingKey {
        case email
        case password = "senha"
    }
}

struct LoginResponse: Codable {
    let auth: Bool
    //let id: String
    let token: String
}

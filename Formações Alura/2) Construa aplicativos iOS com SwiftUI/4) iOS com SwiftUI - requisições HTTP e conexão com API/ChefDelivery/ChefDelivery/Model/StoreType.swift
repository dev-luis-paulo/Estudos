//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 20/11/23.
//

import Foundation

struct StoreType: Identifiable, Decodable {
    
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
    let distancia: Double
    
    private enum CodingKeys: String, CodingKey {
        case id, name, location, stars, products, distancia
        case logoImage = "logo_image"
        case headerImage = "header_image"
    }
}

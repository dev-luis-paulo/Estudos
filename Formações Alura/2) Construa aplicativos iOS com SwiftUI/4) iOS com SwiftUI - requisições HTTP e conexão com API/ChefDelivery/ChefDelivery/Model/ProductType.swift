//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 20/11/23.
//

import Foundation

struct ProductType: Identifiable, Codable {
    
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$" + price.formatPrice()
    }
}

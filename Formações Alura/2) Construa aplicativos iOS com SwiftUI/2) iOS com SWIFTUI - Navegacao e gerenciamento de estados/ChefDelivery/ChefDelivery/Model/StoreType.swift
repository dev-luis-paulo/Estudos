//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 20/11/23.
//

import Foundation

struct StoreType: Identifiable {
    
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}

//
//  Double+.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 21/11/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}

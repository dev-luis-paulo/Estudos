//
//  HomeStack.swift
//  DeepLinking
//
//  Created by ALURA on 27/06/23.
//

import SwiftUI

enum HomeStack: String, CaseIterable {
    case food = "Comidas"
    case drinks = "Bebidas"
    case candies = "Doces"
    
    static func convert(from: String) -> Self? {
        return self.allCases.first { tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}

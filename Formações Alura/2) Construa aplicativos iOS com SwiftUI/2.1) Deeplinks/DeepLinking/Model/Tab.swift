//
//  Tab.swift
//  DeepLinking
//
//  Created by ALURA on 27/06/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home = "inicio"
    case favs = "favoritos"
    case settings = "configuracoes"
    
    var icons: String {
        switch self {
        case .home: return "house.fill"
        case .favs: return "heart.fill"
        case .settings: return "gear"
        }
    }
    
    static func convert(from: String) -> Self? {
        return Tab.allCases.first { tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}

//
//  AppData.swift
//  DeepLinking
//
//  Created by ALURA on 27/06/23.
//

import SwiftUI

class AppData: ObservableObject {
    @Published var activeTab: Tab = .home
    @Published var isShowingPromo: Bool = false
}

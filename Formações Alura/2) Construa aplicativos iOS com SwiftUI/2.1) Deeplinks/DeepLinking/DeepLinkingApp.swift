//
//  DeepLinkingApp.swift
//  DeepLinking
//
//  Created by ALURA on 26/06/23.
//

import SwiftUI

@main
struct DeepLinkingApp: App {
    
    @StateObject private var appData: AppData = .init()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL{ url in
                    let deepLinkManager = DeepLinkManager()
                    deepLinkManager.handleDeepLink(url: url, appData: appData)
                }
        }
    }
}

//
//  ContentView.swift
//  DeepLinking
//
//  Created by ALURA on 26/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        if (appData.isShowingPromo){
            PromoView()
        } else {
            HomeView()
        }
    }
}

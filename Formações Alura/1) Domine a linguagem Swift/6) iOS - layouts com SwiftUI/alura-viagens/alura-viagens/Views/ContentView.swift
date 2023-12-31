//
//  ContentView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                // Vstack principal
                VStack {
                    //VStack Header
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 210 : 320, alignment: .top)
                    
                    //percorre a lista de viagens e coloca as informacoes nessa lista
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}

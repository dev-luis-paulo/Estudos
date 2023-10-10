//
//  ContentView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Alura Viagens")
            Text("Especial")
            Text("Brasil")
            
            List{
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        GeometryReader { view in
            // Vstack principal
            VStack {
                //VStack Header
                VStack {
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 60)
                    Text("Especial")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("Brasil")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                //utiliza o objeto geometryReader
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                List{
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

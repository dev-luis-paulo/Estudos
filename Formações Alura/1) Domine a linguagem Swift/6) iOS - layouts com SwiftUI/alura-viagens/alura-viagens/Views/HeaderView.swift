//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 13/10/23.
//

import SwiftUI

struct HeaderView: View {
    
    //isso é usado para verificar se é comopact ou regular
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("Alura Viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size:
                                        self.horizontalSizeClass == .compact ? 20 : 30)) // se compact é iphone, dai coloca tamanho 20 senao 30
                        .padding(.top, 60)
                    Text("Especial")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size:
                                        self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("Brasil")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size:
                                        self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                //utiliza o objeto geometryReader
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 190 : 230, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)

                
                HStack {
                    Button("Hotéis") {
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                           height: self.horizontalSizeClass == .compact ? 50 : 75,
                           alignment: .center)
                    .font(.custom("Avenir Medium", size:
                                    self.horizontalSizeClass == .compact ? 17 : 24))
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button("Pacotes") {
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                           height: self.horizontalSizeClass == .compact ? 50 : 75,
                           alignment: .center)
                    .font(.custom("Avenir Medium", size:
                                    self.horizontalSizeClass == .compact ? 17 : 24))
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -35 : -45)
            }
        }
    }
}

#Preview {
    HeaderView()
        .previewLayout(.fixed(width: 400, height: 220))
}

//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 13/10/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
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
                .frame(width: view.size.width, height: 190, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)

                
                HStack {
                    Button("Hotéis") {
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
                    .font(.custom("Avenir Medium", size: 17))
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
                    .offset(x: 50)
                    
                    Spacer()
                    
                    Button("Pacotes") {
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
                    .font(.custom("Avenir Medium", size: 17))
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
                    .offset(x: -50)
                }
                .offset(y: -35)
            }
        }
    }
}

#Preview {
    HeaderView()
        .previewLayout(.fixed(width: 400, height: 220))
}

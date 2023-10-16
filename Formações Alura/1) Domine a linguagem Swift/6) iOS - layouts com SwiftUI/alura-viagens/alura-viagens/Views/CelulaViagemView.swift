//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 13/10/23.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/) //para ficar com um aspecto melhor, nao esquecer de recortar
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped() //recorta a imagem
            
            HStack{
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

#Preview {
    CelulaViagemView(viagem: viagens[0])
}

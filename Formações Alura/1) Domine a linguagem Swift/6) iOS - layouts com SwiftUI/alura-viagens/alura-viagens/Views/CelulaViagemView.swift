//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 13/10/23.
//

import SwiftUI

struct CelulaViagemView: View {
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading){
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            HStack{
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

#Preview {
    CelulaViagemView(viagem: viagens[0])
}

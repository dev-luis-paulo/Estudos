//
//  PromoView.swift
//  DeepLinking
//
//  Created by ALURA on 27/06/23.
//

import SwiftUI

struct PromoView: View {
    @EnvironmentObject private var appData: AppData
    var body: some View {
        
        VStack {
            
            Text("Você recebeu um desconto de")
                .padding(.bottom, 16)
                .font(.callout)
            
            Capsule()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .overlay {
                    Text("50%")
                        .font(.system(size: 42))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            
            Text("para usar no nosso app.")
                .padding(.top, 16)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.callout)
            
            
            Button {
                appData.isShowingPromo = false
            } label: {
                Text("Fechar tela")
            }
            .padding(.top, 24)
            
        }
        
    }
}

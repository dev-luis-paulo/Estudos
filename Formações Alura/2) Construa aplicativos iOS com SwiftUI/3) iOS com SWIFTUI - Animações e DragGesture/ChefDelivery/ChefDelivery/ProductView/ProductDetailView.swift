//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 23/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State var productQuantity = 1
    
    var body: some View {
        
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        Button {
            print("Botao pressionado")
        } label: {
            HStack{
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10)
        }
    }
}


#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

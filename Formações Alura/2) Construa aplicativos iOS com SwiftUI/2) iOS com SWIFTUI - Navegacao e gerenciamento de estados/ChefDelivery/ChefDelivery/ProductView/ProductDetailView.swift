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
        VStack {
            VStack(alignment: .leading, spacing: 16){
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            Spacer()
            
            VStack(spacing: 16) {
                Text("Quantidade")
                    .font(.title3)
                    .bold()
                
                HStack {
                    Button {
                        if productQuantity > 1 {
                            productQuantity -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                    
                    Text("\(productQuantity)")
                        .font(.title2)
                        .bold()
                    
                    Button {
                        productQuantity += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                }
            }
            
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
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

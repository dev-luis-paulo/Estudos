//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 23/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var service = HomeService()
    
    var body: some View {
        
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        Button(action:  {
            Task {
                await confirmOrder()
                showAlert = true
            }
        }) {
            HStack{
                Image(systemName: "cart")
                
                Text("Enviar pedido")
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
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertMessage), message: nil, dismissButton: .default(Text("Close")))
        }
    }
    
    func confirmOrder() async {
        do {
            let result = try await service.confirmOrder(product: product)
            switch result {
            case .success(let message):
                print(message)
                showAlert = true
                alertMessage = "Pedido enviado com sucesso"
            case .failure(let error):
                print(error.localizedDescription)
                showAlert = true
                alertMessage = "Erro ao enviar pedido."
            }
        } catch {
            print(error.localizedDescription)
            showAlert = true
            alertMessage = "Erro ao enviar pedido."
        }
        	
    }
}


#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

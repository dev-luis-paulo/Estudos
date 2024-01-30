//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 30/10/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    @State private var distMinFilter = 0.0
    @State private var distMaxFilter = 25.0
    
    var stores: [StoreType]
    
    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter && (store.distancia > distMinFilter && store.distancia <= distMaxFilter)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Estrelas") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating == 1 {
                                Text("\(rating) estrela ou mais")
                            } else {
                                Text("\(rating) estrelas ou mais")
                            }
                        }
                    }
                }
                .foregroundColor(.black)
                
                Menu("Distância") {
                    
                    Button {
                        distMinFilter = 0
                        distMaxFilter = 25
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(Array(stride(from: 0, to: 25, by: 5)), id: \.self) { number in
                        Button {
                            distMinFilter = Double(number)
                            distMaxFilter = Double(number + 5)
                        } label: {
                            Text("De \(number) até \(number + 5) km")
                        }
                    }
                }
                .foregroundColor(.black)
            }
            
            
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                }
                
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView(stores: storesMock)
}

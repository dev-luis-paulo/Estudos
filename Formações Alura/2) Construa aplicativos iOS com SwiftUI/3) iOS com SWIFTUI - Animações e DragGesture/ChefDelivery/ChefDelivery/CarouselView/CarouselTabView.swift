//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 27/10/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    var ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner meal", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView{
            ForEach(ordersMock) { mock in
                CarouselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}

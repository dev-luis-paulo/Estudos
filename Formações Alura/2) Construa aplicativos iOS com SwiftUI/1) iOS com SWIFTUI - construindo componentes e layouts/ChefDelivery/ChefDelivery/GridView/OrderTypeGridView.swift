//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 25/10/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]){
            ForEach(ordersMock) { orderItem in
                Text(orderItem.name)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
}

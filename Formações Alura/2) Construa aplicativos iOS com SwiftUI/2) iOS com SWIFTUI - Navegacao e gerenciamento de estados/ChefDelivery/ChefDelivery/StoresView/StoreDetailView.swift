//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 20/11/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}

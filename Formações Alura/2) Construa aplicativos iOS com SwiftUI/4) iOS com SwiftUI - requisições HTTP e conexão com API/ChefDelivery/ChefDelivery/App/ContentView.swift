//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    // MARK: - Methods
    
    func fetchData() {
        guard let url = URL(string: "https://private-6e2dbe-devluispaulo.apiary-mock.com/questions") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]
                    print(json)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}

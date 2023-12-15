//
//  HomeView.swift
//  DeepLinking
//
//  Created by ALURA on 27/06/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var appData: AppData
    @State private var searchText = ""
    
    let fruits = ["Maçã", "Laranja", "Banana", "Uva", "Melancia", "Tomate", "Cereja"]
    let configs = ["Meu perfil", "Compras", "Temas", "Pagamentos", "Desconectar"]
    
    var body: some View {
        if (appData.isShowingPromo){
            PromoView()
        } else {
            TabView(selection: $appData.activeTab){
                HomeView()
                    .tag(Tab.home)
                    .tabItem {
                        Image(systemName: Tab.home.icons)
                    }
                
                FavoriteView()
                    .tag(Tab.favs)
                    .tabItem {
                        Image(systemName: Tab.favs.icons)
                    }
                
                SettingsView()
                    .tag(Tab.settings)
                    .tabItem {
                        Image(systemName: Tab.settings.icons)
                    }
            }
            .tint(.purple)
            
        }
    }
    
    
    @ViewBuilder
    func HomeView() -> some View {

        var searchResults: [String] {
            if searchText.isEmpty {
                return fruits
            } else {
                return fruits.filter { $0.contains(searchText) }
            }
        }
        
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self){ fruit in
                    NavigationLink {
                        Text(fruit)
                    } label : {
                        Text(fruit)
                        .foregroundColor(.black)
                        
                    }
                }
            }
            .navigationTitle("Alinking e-commerce")
        }
        .searchable(text: $searchText, prompt: "busque uma comida aqui")
    }
    
    
    @ViewBuilder
    func FavoriteView() -> some View {
        
        List {
            ForEach(fruits, id: \.self){ fruit in
                
                HStack(alignment: .top){
                    Text(fruit)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(LinearGradient(colors: [Color.red, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(6)
                .shadow(radius: 5)
                
            }
            .navigationTitle("aa")
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .padding()
    }
    
    
    @ViewBuilder
    func SettingsView() -> some View {
        NavigationStack {
            List {
                ForEach(configs, id: \.self){ config in
                    NavigationLink {
                        Text("Alguma coisa sobre \(config)")
                    } label: {
                        Text(config)
                    }
                }
            }
            .navigationTitle("Configurações")
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppData())
    }
}

//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Luís Paulo Da Costa Cavalcante on 26/01/24.
//

import Foundation

struct HomeService {
    func fetchData() {
        guard let url = URL(string: "https://private-6e2dbe-devluispaulo.apiary-mock.com/home") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storesObjects = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storesObjects)
            }
        }.resume()
    }
}

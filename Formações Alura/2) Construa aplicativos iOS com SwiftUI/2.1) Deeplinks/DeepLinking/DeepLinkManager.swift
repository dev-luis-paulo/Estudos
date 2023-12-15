//
//  DeepLinkManager.swift
//  DeepLinking
//
//  Created by Luís Paulo Da Costa Cavalcante on 15/12/23.
//

import Foundation

class DeepLinkManager {
    func handleDeepLink(url: URL, appData: AppData) {
        // Agrupando os parâmetros
        let string = url.absoluteString.replacingOccurrences(of: "alinking://", with: "")

        // Separar os parâmetros agrupados
        let componentsOnString = string.components(separatedBy: "?")

        // Percorrendo os parâmetros
        for component in componentsOnString {

            // Separando os parâmetros tab e verificando se existem dentro da classe Tab
            // para acessar alguma página do app
            // Tabs que você pode usar: inicio, favoritos ou configuracoes
            let tabRawValues = component.replacingOccurrences(of: "tab=", with: "")
            if let requestedTab = Tab.convert(from: tabRawValues){
                appData.activeTab = requestedTab
            }
            if component.contains("promo=") {
                    let promoValues = component.replacingOccurrences(of: "promo=", with: "")

                    // Verificando se o código de promoção foi o 50A e mudando o valor da propriedade "isShowingPromo" que
                    // Controla se a tela de promoção será mostrada ou não
                    if (promoValues == "50A") {
                        appData.isShowingPromo = true
                    }
                }
        }
    }
}

//
//  ViagemViewModel.swift
//  AluraViagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 28/09/23.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}

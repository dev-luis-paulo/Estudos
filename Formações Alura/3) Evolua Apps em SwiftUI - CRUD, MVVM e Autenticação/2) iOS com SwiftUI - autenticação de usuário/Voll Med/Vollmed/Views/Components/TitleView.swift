//
//  TitleView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 15/02/24.
//

import SwiftUI

struct TitleView: View {
    
    var titulo: String
    
    var body: some View {
        Text(titulo)
            .font(.title3)
            .bold()
            .foregroundStyle(.accent)
    }
}

#Preview {
    TitleView(titulo: "Titulo Qualquer")
}

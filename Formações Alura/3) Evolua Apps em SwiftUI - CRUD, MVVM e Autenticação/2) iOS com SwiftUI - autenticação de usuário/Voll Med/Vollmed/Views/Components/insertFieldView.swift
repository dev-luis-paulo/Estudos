//
//  insertFieldView.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 15/02/24.
//

import SwiftUI

struct insertFieldView: View {
    
    var placeholder: String
    var secure: Bool
    var keyboardType: UIKeyboardType = .default
    var autocorrectionDisabled: Bool = false
    
    @Binding var text: String
    
    var body: some View {
        if secure == false {
            TextField(placeholder, text: $text)
                .padding(14)
                .background(Color.gray.opacity(0.25))
                .cornerRadius(14.0)
                .keyboardType(keyboardType)
                .autocorrectionDisabled(autocorrectionDisabled)
        } else {
            SecureField(placeholder, text: $text)
                .padding(14)
                .background(Color.gray.opacity(0.25))
                .cornerRadius(14.0)
                .keyboardType(keyboardType)
                .autocorrectionDisabled(autocorrectionDisabled)
        }
        
    }
}

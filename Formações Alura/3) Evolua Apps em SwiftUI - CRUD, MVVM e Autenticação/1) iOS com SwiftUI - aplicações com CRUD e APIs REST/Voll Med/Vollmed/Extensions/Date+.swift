//
//  Date+.swift
//  Vollmed
//
//  Created by Luís Paulo Da Costa Cavalcante on 07/02/24.
//

import Foundation

extension Date {
    func convertToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        return dateFormatter.string(from: self)
    }
}

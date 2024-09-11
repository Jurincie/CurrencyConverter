//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 9/11/24.
//

import Foundation

@Observable
class Currency: Identifiable {
    let code: String
    let name: String
    let symbol: String
    let imageName: String
    
    init(code: String = "",
         name: String = "",
         symbol: String = "",
         imageName: String = "") {
        self.code = code
        self.name = name
        self.symbol = symbol
        self.imageName = imageName
    }
}

extension Currency: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(code)
    }
}

extension Currency: Equatable {
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        lhs.code == rhs.code
    }
}

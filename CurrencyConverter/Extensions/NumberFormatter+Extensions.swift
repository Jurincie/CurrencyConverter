//
//  NumberFormatter+Extensions.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/23/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}

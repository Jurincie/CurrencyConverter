//
//  CurrencyData.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/30/24.
//

import Foundation

final class CurrencyData: Codable, Sendable {
    let success: Bool
    let terms, privacy: String
    let timestamp: Int
    let source: String
    let quotes: [String: Double]

    init(success: Bool, 
         terms: String,
         privacy: String,
         timestamp: Int,
         source: String,
         quotes: [String: Double]) {
        self.success = success
        self.terms = terms
        self.privacy = privacy
        self.timestamp = timestamp
        self.source = source
        self.quotes = quotes
    }
}

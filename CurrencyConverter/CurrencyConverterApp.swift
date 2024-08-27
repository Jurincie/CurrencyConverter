//
//  CurrencyConverterApp.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/20/24.
//

import SwiftData
import SwiftUI

@main
struct CurrencyConverterApp: App {
    var body: some Scene {
        WindowGroup {
            ConversionView()
                .modelContainer(for: ConversionData.self)
        }
    }
}

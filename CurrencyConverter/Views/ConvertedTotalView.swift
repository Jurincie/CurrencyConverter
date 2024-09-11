//
//  ConvertedTotalView.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 9/11/24.
//

import SwiftUI

struct ConvertedTotalView: View {
    @Binding var convertedAmount: Double
    @Binding var toCurrency: Currency
    @Binding var fromCurrency: Currency
    @Binding var messages: [String]
    
    var body: some View {
        VStack {
            HStack {
                let formatter = NumberFormatter.currency
                if let str = formatter.string(from: convertedAmount as NSNumber) {
                    let str1 = str.dropFirst()
                   
                    Text((messages.count == 0 ? "(" + toCurrency.symbol + ")" + str1 : ""))
                        .foregroundStyle(messages.count == 0 ? Color.primary : Color.red)
                }
            }
            .font(.title)
            if messages.first != "" {
                ForEach(messages, id: \.self) { str in
                    Text(str)
                        .foregroundStyle(Color.red)
                }
            }
        }
        .padding()
        .border(Color.primary, width: convertedAmount == 0.0 ? 0 : 1)
    }
}

//#Preview {
//    ConvertedTotalView()
//}

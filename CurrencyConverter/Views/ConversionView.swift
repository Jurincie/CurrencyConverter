//
//  PhotoContentView.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/25/24.
//

import SwiftData
import SwiftUI

@MainActor
struct ConversionView: View {
    var storeModel = StoreModel(webservice: Webservice())
    private var conversionOccurred = false
    @State private var messages = [""]
    @State private var amountString = ""
    @State private var convertedAmount = 0.0
    @State private var fromCurrency = Currency(code: "AUD",
                                               name: "Australian Dollar",
                                               symbol: "$",
                                               imageName: "australia")
    @State private var toCurrency = Currency(code: "GBP",
                                             name: "British Pound",
                                             symbol: "£",
                                             imageName: "england")

    var body: some View {
        VStack {
            PickersView(storeModel: storeModel,
                        fromCurrency: $fromCurrency,
                        toCurrency: $toCurrency)
            
            HStack {
                Text("(" + fromCurrency.symbol + ")")
                    .font(.largeTitle)
                TextField("From Amount", text: $amountString)
                    .padding()
                    .border(Color.primary, width: 2)
                    .frame(maxWidth: 200)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .font(.title)
            }
        
            Button(action: {
                if verifyInput() {
                    Task {
                        await storeModel.loadData()
                    }
                    convertedAmount = storeModel.convert(from: fromCurrency,
                                                         to: toCurrency,
                                                         amount: Double(amountString)!)
                }
            }, label: {
                Text("CONVERT")
                    .font(.title)
                    .disabled(messages.count > 0 || messages.first == "")
            })
            .buttonStyle(.borderedProminent)
            .padding()
            
            Divider()
            
            ConvertedTotalView(convertedAmount: $convertedAmount,
                               toCurrency: $toCurrency,
                               fromCurrency: $fromCurrency,
                               messages: $messages)
        }
    }
    
    func verifyInput() -> Bool {
        messages.removeAll()
        
        if toCurrency == fromCurrency{
            messages.append("To and From Currencies cannot be the same.")
        }
        if amountString.count == 0 {
            messages.append("Amount cannot be empty.")
        } else if Double(amountString) == nil {
            messages.append("Amount must be numeric.")
        }else if Double(amountString) == 0.0 {
            messages.append("Amount must greater than zero.")
        }

        return messages.count == 0
    }
}

#Preview {
    ConversionView()
}

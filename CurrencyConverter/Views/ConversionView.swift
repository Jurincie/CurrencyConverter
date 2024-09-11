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
    @State private var fromCurrency = Currency(code: "AUD",
                                               name: "Australian Dollar",
                                               symbol: "$",
                                               imageName: "australia")
    @State private var toCurrency = Currency(code: "GBP",
                                             name: "British Pound",
                                             symbol: "£",
                                             imageName: "england")
    @State private var convertedAmount = 0.0

    var body: some View {
        VStack {
            PickersView(storeModel: storeModel,
                        fromCurrency: $fromCurrency,
                        toCurrency: $toCurrency)
            
            HStack {
                Text("(" + fromCurrency.symbol + ")")
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
        .task {
            await storeModel.loadData()
        }
        .refreshable {
            await storeModel.loadData()
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

struct PickersView: View {
    let storeModel: StoreModel
    @Binding var fromCurrency: Currency
    @Binding var toCurrency: Currency
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            HStack {
                Text("From: ")
                Picker("From", selection: $fromCurrency) {
                    ForEach(storeModel.currencies, id: \.self) { item in
                        PickerRowView(item: item)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            
            HStack {
                Text("To: ")
                Picker("To", selection: $toCurrency) {
                    ForEach(storeModel.currencies, id: \.self) { item in
                        PickerRowView(item: item)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
           
        }
        .font(.largeTitle)
    }
}

struct PickerRowView: View {
    var item: Currency
    
    var body: some View {
        HStack {
            VStack
            {
                Text(item.name)
                    .tag(item)
                Text(item.name + "(" + item.symbol + ")")
            }
            .font(.title)
            Image(item.imageName)
                .resizable()
        }
    }
}

#Preview {
    ConversionView()
}

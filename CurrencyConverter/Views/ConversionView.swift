//
//  PhotoContentView.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/25/24.
//

import SwiftData
import SwiftUI

struct ConversionView: View {
    @Environment(\.modelContext) var modelContext
    let storeModel = StoreModel(webservice: Webservice())
    
    @State private var messages = [String]()
    @State private var amount = ""
    @State private var fromCurrency: String = "USD"
    @State private var toCurrency: String = "CAD"
  
    var body: some View {
        VStack {
            PickersView(fromCurrency: $fromCurrency,
                        toCurrency: $toCurrency)
            
            TextField("Amount", text: $amount)
                .padding()
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .font(.title)
            
            Button(action: {
                //
            }, label: {
                Text("CONVERT")
                    .buttonStyle(.borderedProminent)
                .font(.title)
                .disabled(messages.count > 0)
            })
        }
        .task {
            await storeModel.webservice.updateDataInDatabase(modelContext: modelContext)
        }
        .refreshable {
            await storeModel.webservice.updateDataInDatabase(modelContext: modelContext)
        }
    }
}

struct PickersView: View {
    @State private var currencies = ["US DOLLAR": "USD", "CANADIAN DOLLAR": "CAD", "EURO": "EUR"]
    @Binding var fromCurrency: String
    @Binding var toCurrency: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Picker("From:", selection: $fromCurrency) {
                ForEach(currencies.sorted(by: >), id: \.key) { key, value in
                    Text(key)
                }
            }
            
            Picker("To:", selection: $toCurrency) {
                ForEach(currencies.sorted(by: >), id: \.key) { key, value in
                    Text(key)
                }
            }
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: ConversionData.self, configurations: config)
        let sampleObject: ConversionData? = nil
        
        container.mainContext.insert(sampleObject!)
        
        return ConversionView().modelContainer(container)
    } catch {
        fatalError("Failed to create model container")
    }
}

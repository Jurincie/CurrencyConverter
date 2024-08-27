//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/20/24.
//

import SwiftData
import SwiftUI

struct CodePicker: View {
    @Binding var codes: [String]
    
    var body: some View {
        Picker(selection: $codes) {
            ForEach(codes, id: \.self) { str in
                Text(str)
            }
        } label: {
            Text("From: ")
        }
    }
}

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var currency: [Currency]
    @State private var codes = [String]()
    @State private var decimalAmountIn: String = "100.00"
    private var fromCode = ""
    
    init() {
        codes = getCodes()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("AMOUNT:")
                    .padding(.trailing)
                TextField("Amount", text: $decimalAmountIn)
                    .border(Color.primary, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            .frame(maxWidth: 400)
            HStack {
                CodePicker(codes: $codes)
                .navigationTitle("Currency Converter")
            }
            .padding(.horizontal)
        }
        VStack {
            Button("GET CONVERSIONS") {
                Task {
                    try await NetworkManager.fetch(countryCode: fromCode)
                }
            }
            .frame(alignment: .center)
            .buttonStyle(BorderedProminentButtonStyle())
            .disabled(false)
            Spacer()
        }
    }
    
    func getCodes() -> [String] {
        ["USD", "MXN", "LAK"]
    }
}

//#Preview {
//    ContentView()
//    .environment(\.sizeCategory,
//                  .accessibilityExtraExtraExtraLarge)
//    .preferredColorScheme(.dark)
//}

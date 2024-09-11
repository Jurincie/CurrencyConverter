//
//  PickersView.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 9/11/24.
//

import SwiftUI

struct PickersView: View {
    @Environment(\.dynamicTypeSize) var userSize
    let storeModel: StoreModel
    @Binding var fromCurrency: Currency
    @Binding var toCurrency: Currency
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            VStack(spacing: 0) {
                Text("From: ")
                Picker("From", selection: $fromCurrency) {
                    ForEach(storeModel.currencies, id: \.self) { item in
                        PickerRowView(item: item)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            
            VStack(spacing: 0) {
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

//#Preview {
//    PickersView()
//}

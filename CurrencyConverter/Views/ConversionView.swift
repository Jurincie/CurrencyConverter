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
  
    var body: some View {
        let numQuotes = 23
        Text("\(numQuotes)")
        .task {
            await storeModel.webService().updateDataInDatabase(modelContext: modelContext)
        }
        .refreshable {
            await storeModel.webService().updateDataInDatabase(modelContext: modelContext)
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

//
//  ConversionDataDTO.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/26/24.
//

import Foundation
import SwiftData
import SwiftUI

@Observable
class StoreModel {
    var quotes: Quotes? = nil
    let webservice: WebService
    
    init(webservice: WebService) {
        self.webservice = webservice
    }
    
    func populateQuotes() async {
        quotes = webservice.updateDataInDatabase(modelContext: modelContext)
    }
}

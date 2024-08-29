//
//  AggregrateStoreModel.swift
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
    let webservice: Webservice
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
}

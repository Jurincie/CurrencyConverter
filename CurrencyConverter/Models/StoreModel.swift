//
//  AggregrateStoreModel.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/26/24.
//

import Foundation
import SwiftUI

enum PlistError: Error {
    case unknownError
}

@MainActor
@Observable
final class StoreModel: Sendable {
    var currencyData: CurrencyData? = nil
    let webservice: Webservice
    var currencies: [Currency] = []
    var firstCurrency: Currency {
        currencies.first!
    }
    var lastCurrency: Currency {
        currencies.last!
    }
    
    init(webservice: Webservice) {
        self.webservice = webservice
        Task {
            do {
                self.currencies = try await populateCurrencies()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func loadData() async {
        currencyData = await webservice.downloadData(fromURL: webservice.urlString)
    }
    
    /// <#Description#>
    /// - Returns: populate via Currency.plist
    ///
    private func populateCurrencies() async throws -> [Currency] {
        var currencies = [Currency]()
        
        do {
            guard let path = Bundle.main.path(forResource: "Currency", 
                                              ofType: "plist") else { return [] }
           
            if let arrayOfDictionaries: [Dictionary<String,String>] = NSArray(contentsOfFile: path)  as? [Dictionary<String, String>] {
                // iterate arrayOfdictionaries
                for dict in arrayOfDictionaries {
                    guard let code = dict["Code"],
                          let name = dict["Name"],
                          let symbol = dict["Symbol"],
                          let imageName = dict["ImageName"] else {
                        throw PlistError.unknownError
                    }
                    if code == "" {
                        continue
                    }
                    let newCurrency = Currency(code: code,
                                               name: name,
                                               symbol: symbol,
                                               imageName: imageName)
                    currencies.append(newCurrency)
                }
            }
        }
        catch {
          print(error)
        }
        
        return currencies
    }
    
    func convert(from: Currency,
                 to: Currency,
                 amount: Double) -> Double {
        let fromConversion:Double = currencyData?.quotes["USD" + from.code] ?? 1.0
        let toConversion:Double = currencyData?.quotes["USD" + to.code] ?? 1.0
        
        return amount / fromConversion * toConversion
    }
}

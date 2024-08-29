//
//  Webservice.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/25/24.
//

import Foundation
import SwiftData
import SwiftUI

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

class Webservice {
    var prefix = "https://currencyconversionapi.com/api/v1/live?access_key="
    let apiKey = "e9c70fffa68a60d5409f9b76b21332ba"
    /*
     "https://currencyconversionapi.com/api/v1/convert?access_key=e9c70fffa68a60d5409f9b76b21332ba&from=USD&to=GBP&amount=10"
     */
    
    @MainActor
    func updateDataInDatabase(modelContext: ModelContext) async {
        do {
            if let conversionData: ConversionData = try await fetchData(fromUrl: prefix + apiKey) {
                modelContext.insert(conversionData)
            }
        } catch {
            print("Error fetching data")
            print(error.localizedDescription)
        }
    }
    private func fetchData<T: Decodable>(fromUrl: String) async throws -> T {
        guard let downloadedData: [T] = await downloadData(fromURL: fromUrl) else { throw NetworkError.badUrl }

        return downloadedData as! T
    }
    
    private func downloadData<T: Decodable>(fromURL: String) async -> T? {
        do {
            guard let url = URL(string: fromURL) else { throw NetworkError.badUrl }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse else { throw NetworkError.badResponse }
            guard 200...299 ~= response.statusCode else { throw NetworkError.badStatus }
            guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkError.failedToDecodeResponse }
            
            return decodedResponse
        } catch NetworkError.badUrl {
            print("There was an error creating the URL")
        } catch NetworkError.badResponse {
            print("Did not get a valid response")
        } catch NetworkError.badStatus {
            print("Did not get a 2xx status code from the response")
        } catch NetworkError.failedToDecodeResponse {
            print("Failed to decode response into the given type")
        } catch {
            print("An error occured downloading the data")
        }
        
        return nil
    }
    
    func getQuery(to: String, from: String, amount: Double) -> String {
        var str = prefix + apiKey
        
        str.append("&from=")
        str.append(from)
        str.append("&to=")
        str.append(to)
        str.append("&amount=")
        str.append(String(amount))
        
        return str
    }
}

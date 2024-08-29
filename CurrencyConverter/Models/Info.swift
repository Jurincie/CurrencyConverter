//
//  Info.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/28/24.
//

import Foundation
import SwiftData

@Model
class Info : Decodable {
    let timestamp : Int?
    let quota : Double?

    enum CodingKeys: String, CodingKey {
        case timestamp = "timestamp"
        case quota = "quota"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        timestamp = try values.decodeIfPresent(Int.self, forKey: .timestamp)
        quota = try values.decodeIfPresent(Double.self, forKey: .quota)
    }
}

//
//  Query.swift
//  CurrencyConverter
//
//  Created by Ron Jurincie on 8/28/24.
//

import Foundation
import SwiftData

@Model
class Query : Decodable {
    let from : String?
    let to : String?
    let amount : Int?

    enum CodingKeys: String, CodingKey {
        case from = "from"
        case to = "to"
        case amount = "amount"
    }

    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        from = try values.decodeIfPresent(String.self, forKey: .from)
        to = try values.decodeIfPresent(String.self, forKey: .to)
        amount = try values.decodeIfPresent(Int.self, forKey: .amount)
    }
}

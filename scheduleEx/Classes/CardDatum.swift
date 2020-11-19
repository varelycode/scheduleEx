//
//  CardDatum.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

struct CardDatum : Codable {

        let clickthroughURL : String?
        let isDefault : Bool?

        private enum CodingKeys: String, CodingKey {
                case clickthroughURL = "ClickthroughURL"
                case isDefault = "IsDefault"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                clickthroughURL = try values.decodeIfPresent(String.self, forKey: .clickthroughURL)
                isDefault = try values.decodeIfPresent(Bool.self, forKey: .isDefault)
        }

}

//
//  Date.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

struct Date : Codable {

        let isTBA : Bool?
        let isTba : Bool?
        let numeric : String?
        let text : String?
        let time : String?
        let timestamp : String?

        enum CodingKeys: String, CodingKey {
                case isTBA = "-IsTBA"
                case isTba = "-IsTba"
                case numeric = "-Numeric"
                case text = "-Text"
                case time = "-Time"
                case timestamp = "-Timestamp"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                isTBA = try values.decodeIfPresent(Bool.self, forKey: .isTBA)
                isTba = try values.decodeIfPresent(Bool.self, forKey: .isTba)
                numeric = try values.decodeIfPresent(String.self, forKey: .numeric)
                text = try values.decodeIfPresent(String.self, forKey: .text)
                time = try values.decodeIfPresent(String.self, forKey: .time)
                timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        }

}

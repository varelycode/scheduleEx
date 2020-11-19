//
//  Opponent.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

struct Opponent : Codable {

        let city : String?
        let fullName : String?
        let name : String?
        let record : String?
        let triCode : String?

        private enum CodingKeys: String, CodingKey {
                case city = "-City"
                case fullName = "-FullName"
                case name = "-Name"
                case record = "-Record"
                case triCode = "-TriCode"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                city = try values.decodeIfPresent(String.self, forKey: .city)
                fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                record = try values.decodeIfPresent(String.self, forKey: .record)
                triCode = try values.decodeIfPresent(String.self, forKey: .triCode)
        }

}

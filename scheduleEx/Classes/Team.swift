//
//  Team.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import Foundation
import UIKit

struct Team : Codable {

        let city : String?
        let fullName : String?
        let losses : String?
        let name : String?
        let record : String?
        let triCode : String?
        let winPercentage : String?
        let wins : String?

        private enum CodingKeys: String, CodingKey {
                case city = "-City"
                case fullName = "-FullName"
                case losses = "-Losses"
                case name = "-Name"
                case record = "-Record"
                case triCode = "-TriCode"
                case winPercentage = "-WinPercentage"
                case wins = "-Wins"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                city = try values.decodeIfPresent(String.self, forKey: .city)
                fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
                losses = try values.decodeIfPresent(String.self, forKey: .losses)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                record = try values.decodeIfPresent(String.self, forKey: .record)
                triCode = try values.decodeIfPresent(String.self, forKey: .triCode)
                winPercentage = try values.decodeIfPresent(String.self, forKey: .winPercentage)
                wins = try values.decodeIfPresent(String.self, forKey: .wins)
        }

}

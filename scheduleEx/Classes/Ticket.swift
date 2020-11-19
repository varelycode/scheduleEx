//
//  Ticket.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

struct Ticket : Codable {

        let hasLink : Bool?

        private enum CodingKeys: String, CodingKey {
                case hasLink = "-HasLink"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                hasLink = try values.decodeIfPresent(Bool.self, forKey: .hasLink)
        }

}

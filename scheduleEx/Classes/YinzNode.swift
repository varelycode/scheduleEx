//
//  YinzNode.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation


import Foundation

struct YinzNode : Codable {

        let ads : String?
        let carrier : String?
        let generated : String?
        let inVenue : Bool?
        let venueStatus : String?

        private enum CodingKeys: String, CodingKey {
                case ads = "-Ads"
                case carrier = "-Carrier"
                case generated = "-Generated"
                case inVenue = "-InVenue"
                case venueStatus = "-VenueStatus"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                ads = try values.decodeIfPresent(String.self, forKey: .ads)
                carrier = try values.decodeIfPresent(String.self, forKey: .carrier)
                generated = try values.decodeIfPresent(String.self, forKey: .generated)
                inVenue = try values.decodeIfPresent(Bool.self, forKey: .inVenue)
                venueStatus = try values.decodeIfPresent(String.self, forKey: .venueStatus)
        }

}

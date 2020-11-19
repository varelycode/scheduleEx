//
//  Game.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import Foundation
import UIKit

struct Game : Codable {

        let awayScore : String?
        let clock : String?
        let down : String?
        let gameState : String?
        let home : Bool?
        let homeScore : String?
        let id : String?
        let isHome : Bool?
        let label : String?
        let result : String?
        let scheduleHeader : String?
        let type : String?
        let venue : String?
        let week : String?
        let wLT : String?
//        let cardData : CardDatum?
        let date : Date?
        let opponent : Opponent?
//        let tickets : Ticket?

        private enum CodingKeys: String, CodingKey {
                case awayScore = "-AwayScore"
                case clock = "-Clock"
                case down = "-Down"
                case gameState = "-GameState"
                case home = "-Home"
                case homeScore = "-HomeScore"
                case id = "-Id"
                case isHome = "-IsHome"
                case label = "-Label"
                case result = "-Result"
                case scheduleHeader = "-ScheduleHeader"
                case type = "-Type"
                case venue = "-Venue"
                case week = "-Week"
                case wLT = "-WLT"
//                case cardData = "CardData"
                case date = "Date"
                case opponent = "Opponent"
//                case tickets = "Tickets"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                awayScore = try values.decodeIfPresent(String.self, forKey: .awayScore)
                clock = try values.decodeIfPresent(String.self, forKey: .clock)
                down = try values.decodeIfPresent(String.self, forKey: .down)
                gameState = try values.decodeIfPresent(String.self, forKey: .gameState)
                home = try values.decodeIfPresent(Bool.self, forKey: .home)
                homeScore = try values.decodeIfPresent(String.self, forKey: .homeScore)
                id = try values.decodeIfPresent(String.self, forKey: .id)
                isHome = try values.decodeIfPresent(Bool.self, forKey: .isHome)
                label = try values.decodeIfPresent(String.self, forKey: .label)
                result = try values.decodeIfPresent(String.self, forKey: .result)
                scheduleHeader = try values.decodeIfPresent(String.self, forKey: .scheduleHeader)
                type = try values.decodeIfPresent(String.self, forKey: .type)
                venue = try values.decodeIfPresent(String.self, forKey: .venue)
                week = try values.decodeIfPresent(String.self, forKey: .week)
                wLT = try values.decodeIfPresent(String.self, forKey: .wLT)
//                cardData = try CardDatum(from: decoder)
                date = try Date(from: decoder)
                opponent = try Opponent(from: decoder)
//                tickets = try Ticket(from: decoder)
        }

}

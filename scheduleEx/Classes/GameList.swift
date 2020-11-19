//
//  GameList.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

// MARK: - GameList
struct GameList : Codable {

        let defaultGameId : String?
        let gameSection : [GameSection]?
        let team : Team?
        let yinzNode : YinzNode?

        private enum CodingKeys: String, CodingKey {
                case defaultGameId = "DefaultGameId"
                case gameSection = "GameSection"
                case team = "Team"
                case yinzNode = "YinzNode"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                defaultGameId = try values.decodeIfPresent(String.self, forKey: .defaultGameId)
                gameSection = try values.decodeIfPresent([GameSection].self, forKey: .gameSection)
                team = try Team(from: decoder)
                yinzNode = try YinzNode(from: decoder)
        }

}




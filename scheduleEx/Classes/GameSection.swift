//
//  GameSection.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

// MARK: - GameSection
struct GameSection : Codable {

        let heading : String?
        let game : Game?
//        let game : [Game]?
//        let game: GameUnion?
        //let game: GameUnion

        private enum CodingKeys: String, CodingKey {
                case heading = "-Heading"
                case game = "Game"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                heading = try values.decodeIfPresent(String.self, forKey: .heading)
                game = try Game(from: decoder)
//            game = try GameUnion(from: decoder)
        }
    
    

}

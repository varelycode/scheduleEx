//
//  Instance.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

class Instance: Codable {
    let gameList: GameList

    private enum CodingKeys: String, CodingKey {
        case gameList = "GameList"
    }

    init(gameList: GameList) {
        self.gameList = gameList
    }
}

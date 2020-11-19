//
//  GameUnion.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation

enum GameUnion: Codable {
    case gameElement(Game)
    case gameElementArray([Game])

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode([Game].self) {
            self = .gameElementArray(x)
            return
        }
        if let x = try? container.decode(Game.self) {
            self = .gameElement(x)
            return
        }
        throw DecodingError.typeMismatch(GameUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for GameUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .gameElement(let x):
            try container.encode(x)
        case .gameElementArray(let x):
            try container.encode(x)
        }
    }
}

//
//  Season.swift
//  scheduleEx
//
//  Created by viv on 11/19/20.
//

import Foundation


struct Season: Codable{

    let heading: String
//    let games: [Game]
    
    private enum CodingKeys: String, CodingKey{

        case heading = "-Heading"
        
    }
    
    init(json: [Any]){
        heading = ""
    }
        
    
}

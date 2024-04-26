//
//  RMEpisodes.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 26/04/2024.
//

import Foundation

/// Model of the Episodes 
struct RMEpisodes: Codable{
    
    let id : Int
    let name : String
    let air_date :String
    let episode : String
    let characters : [String]
    let url : String
    let created : String
    
}

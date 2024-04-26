//
//  RMcharacters.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation

public struct RMCharacters: Codable {
    
    let id: Int
    let name : String
    let status : String
    let species: String
    let type : String
    let gender: String
    let origin : RMOrigin
    let location : RM1Location
    let url : String
    let image : String
    let episode : [String]
    let created : String
}

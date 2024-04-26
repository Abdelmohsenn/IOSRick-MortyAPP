//
//  RMcharacters.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation
/// Model of the the characters

public struct RMCharacters: Codable {
    
    let id: Int
    let name : String
    let status : stat
    let species: String
    let type : String
    let gender: Gender
    let origin : RMOrigin
    let location : RM1Location
    let url : String
    let image : String
    let episode : [String]
    let created : String
}

enum stat : String, Codable{
    
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "Unknwon"
}
enum Gender : String, Codable{
    
    case m = "Male"
    case f = "Female"
    case genderless = "Genderless"
    case unkown = "Unknown"
}

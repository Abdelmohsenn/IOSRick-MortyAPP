//
//  RMLocation.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 26/04/2024.
//

import Foundation
 
struct RMLocation : Codable{
    let id : Int
    let name :String
    let type : String
    let dimension : String
    let residents : [String]
    let created: String
    let url: String
}

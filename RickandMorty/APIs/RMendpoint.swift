//
//  RMendpoint.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation

/// won't receive any additional values (Unique)
\
@frozen enum RMendpoint: String  {
    /// endpoints to get the character info
    case character
    /// endpoints to get the Episodes info
    case episodes
    /// endpoints to get the Locaton info
    case location
    
}

//
//  Rmservice.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation

/// Primary API server
final class Rmservice{
    /// Shared instance (singleton)
    static let share = Rmservice()
    
    private init () {
        
    }
    
    public func execute (_ request: RMrequest, completion: @escaping (Result<String,Error>) ->Void){
        
        
    }
}

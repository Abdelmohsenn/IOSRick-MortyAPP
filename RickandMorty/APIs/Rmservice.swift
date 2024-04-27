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
    
    public func execute<T: Codable> (_ request: RMrequest, expecting type: T.Type, completion: @escaping (Result<T,Error>) ->Void){
        
        
    }
}

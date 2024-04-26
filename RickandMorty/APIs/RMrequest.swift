//
//  RMrequest.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation

/// Requests from the API
final class RMrequest{
    /// Endpoint
    private let endpts : RMendpoint
     /// comp
    private let pathcomps : [String]
     /// Query
    private let queryparameters : [URLQueryItem]
    
    public var  urlpassed : URL? {
        return URL(string: urlstring)
    }
    private struct consts{
        /// Base URL
        static let baseurl = "https://rickandmortyapi.com/api"
    }
    
    private var urlstring : String {
        var string = consts.baseurl
        string += "/"
        string += endpts.rawValue
        if !pathcomps.isEmpty{
            pathcomps.forEach({
                string += "/\($0)"
            })
            
        }
        
        if !queryparameters.isEmpty{
           string += "?"
            let argstring = queryparameters.compactMap({
                guard let value = $0.value else {return ""}
                return "\($0.name)=\(value)"}).joined(separator: "&")
            string += argstring
            
        }
        return string
    }
    
     init(endpts: RMendpoint, pathcomps: [String], queryparameters: [URLQueryItem]) {
        self.endpts = endpts
        self.pathcomps = pathcomps
        self.queryparameters = queryparameters
    }
    
    
}

//
//  RMrequest.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 27/04/2024.
//

import Foundation

/// Requests from the API
final class RMrequest{
    /// Endpoint => character, loc, episodes
    private let endpts : RMendpoint
     /// pathcomp
    private let pathcomps : Set<String>
     /// Query args
    private let queryparameters : [URLQueryItem]
    
    public var  urlpassed : URL? {
        return URL(string: urlstring)
    }
    private struct consts{
        /// Base URL
        static let baseurl = "https://rickandmortyapi.com/api"
    }
    
    /// string formulation for pathcomps

    private var urlstring : String {
        var string = consts.baseurl
        string += "/"
        string += endpts.rawValue
        
        if !pathcomps.isEmpty{
            pathcomps.forEach({
                string += "/\($0)"
            })
            
        }
        
        /// string formulation for args
        
        if !queryparameters.isEmpty{
           string += "?"
            let argstring = queryparameters.compactMap({
                guard let value = $0.value else {return ""}
                return "\($0.name)=\(value)"}).joined(separator: "&")
            string += argstring
            
        }
        return string
    }
    ///get for http request
     public let httpmethod = "GET"
     init(endpts: RMendpoint, pathcomps: Set<String>, queryparameters: [URLQueryItem]) {
        self.endpts = endpts
        self.pathcomps = pathcomps
        self.queryparameters = queryparameters
    }
    
    
}

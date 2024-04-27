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
    static let shared = Rmservice()
    enum error:Error{
        case FailedError
        case FailedData
    }
    private init () {
        
    }
    
    public func execute<T: Codable> (_ request: RMrequest, expecting type: T.Type, completion: @escaping (Result<T,Error>) ->Void){
        
        guard let urlrequest = self.request(from: request) else {completion(.failure(error.FailedError))
            return
        }
        let task = URLSession.shared.dataTask(with: urlrequest){data, _, err in
            guard let data = data, err == nil else {
                completion(.failure(err  ?? error.FailedData))
                return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
            } catch
            {
                completion(.failure(err!))
                
            }
        }
        task.resume()
    }
    
    
    private func request(from Rmrequest:RMrequest) ->URLRequest?{
        guard let urlpassed = Rmrequest.urlpassed else {return nil}
        var request = URLRequest(url: urlpassed)
        request.httpMethod = Rmrequest.httpmethod
        return request
    }
}

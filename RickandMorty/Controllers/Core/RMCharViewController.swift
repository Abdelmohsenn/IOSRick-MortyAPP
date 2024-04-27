//
//  RMCharViewController.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 26/04/2024.
//

import UIKit

class RMCharViewController: UIViewController {
    var x : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...200{
            x.append(String(i))
        }
        title = "Characters"
        guard let rand = x.randomElement() else{ return }
        let Charrequest = RMrequest(endpts: .character, pathcomps: [], queryparameters: [
            ]
        )
        let Locrequest = RMrequest(endpts: .location, pathcomps: [], queryparameters: [
            ]
        )
        let Episoderequest = RMrequest(endpts: .episode, pathcomps: [], queryparameters: [
            ]
        )
        
//        print(Episoderequest.urlpassed)
//        print(Locrequest.urlpassed)
//        print(Charrequest.urlpassed)

        Rmservice.shared.execute(Charrequest, expecting: RMCharacters.self){
            result in
            switch result{
                
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
        Rmservice.shared.execute(Locrequest, expecting: RMLocation.self){
            result in
            switch result{
                
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
        Rmservice.shared.execute(Episoderequest, expecting: RMEpisodes.self){
            result in
            switch result{
                
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    
    
   
}

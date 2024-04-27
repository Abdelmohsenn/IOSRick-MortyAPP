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
        let request = RMrequest(endpts: .character, pathcomps: [rand], queryparameters: [
            ]
        )
        
        print(request.urlpassed)
    }
    
    
   
}

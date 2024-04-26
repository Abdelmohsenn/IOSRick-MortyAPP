//
//  RMCharViewController.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 26/04/2024.
//

import UIKit

class RMCharViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
        
        let request = RMrequest(endpts: .character, pathcomps: [], queryparameters: [])
        
        print(request.urlpassed)
    }
    
    
   
}

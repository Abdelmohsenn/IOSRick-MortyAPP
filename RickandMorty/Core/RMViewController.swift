//
//  ViewController.swift
//  RickandMorty
//
//  Created by muhammad abdelmohsen on 26/04/2024.
//

import UIKit

final class RMtabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupVCs()
           }
 

    private func setupVCs(){
        
        let SettingsVc = RMSettingsViewController()
        let LocationVc = RMLocationViewController()
        let CharacterVc = RMCharViewController()
        let EpisodesVc = RMEpisodesViewController()
        
        SettingsVc.navigationItem.largeTitleDisplayMode = .automatic
        LocationVc.navigationItem.largeTitleDisplayMode = .automatic
        CharacterVc.navigationItem.largeTitleDisplayMode = .automatic
        EpisodesVc.navigationItem.largeTitleDisplayMode = .automatic

        let Nav4 = UINavigationController(rootViewController: SettingsVc)
        let Nav2 = UINavigationController(rootViewController: LocationVc)
        let Nav3 = UINavigationController(rootViewController: CharacterVc)
        let Nav1 = UINavigationController(rootViewController: EpisodesVc)
        
        Nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName:"gearshape"), tag: 1)
        Nav1.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "rectangle.inset.filled.and.person.filled"), tag: 1)
        Nav3.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName:"figure"), tag: 1)
        Nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "location.fill"), tag: 1)

        Nav4.navigationBar.prefersLargeTitles = true
        Nav1.navigationBar.prefersLargeTitles = true
        Nav2.navigationBar.prefersLargeTitles = true
        Nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([Nav1,Nav2,Nav3,Nav4], animated: true)
    }
    
}

  

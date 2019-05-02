//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Victor  on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import Foundation
import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    let planetController = PlanetController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PlanetsCollectionViewCell
        
        let planet = planetController.planets[indexPath.item]
        
        cell.planetLabel.text = planet.name
        cell.planetImageView.image = planet.image
        
        return cell
    }
}



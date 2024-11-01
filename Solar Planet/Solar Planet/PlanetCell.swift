//
//  PlanetCell.swift
//  Solar Planet
//
//  Created by Giyu Tomioka on 8/24/24.
//

import UIKit

class PlanetCell: UICollectionViewCell {
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(planet: Planet) {
        planetImage.image = UIImage(named:planet.imageName)
        nameLabel.text = planet.name
    }
}

//
//  DeviceCell.swift
//  Collection View Class
//
//  Created by Giyu Tomioka on 8/24/24.
//

import UIKit

class DeviceCell: UICollectionViewCell {
    @IBOutlet weak var deviceImage: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    
    func configure(device: Device) {
        deviceImage.image = UIImage(named:device.imageName)
        brandLabel.text = device.brand
        modelLabel.text = device.model
    }
}

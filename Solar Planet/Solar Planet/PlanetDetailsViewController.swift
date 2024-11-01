//  PlanetDetailViewController.swift
//  Solar Planet
//
//  Created by Giyu Tomioka on 8/24/24.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    var planet: Planet?

    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            planetImageView.image = UIImage(named: planet.imageName)
            planetNameLabel.text = planet.name
        }
    }
}

//
//  ViewController.swift
//  Solar Planet
//
//  Created by Giyu Tomioka on 8/24/24.
//

import UIKit

class ViewController: UIViewController {


    let planets: [Planet] = [
        Planet(imageName: "earth", name: "Earth"),
        Planet(imageName: "mars", name: "Mars"),
        Planet(imageName: "jupiter", name: "Jupiter"),
        Planet(imageName: "saturn", name: "Saturn"),
        Planet(imageName: "mercury", name: "Mercury"),
        Planet(imageName: "venus", name: "Venus"),
        Planet(imageName: "neptune", name: "Neptune"),
        Planet(imageName: "uranus", name: "Uranus")
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCell {
            cell.configure(planet: planets[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("Selected planet: \(planets[indexPath.row].name)")
//            
//            if let vc = storyboard?.instantiateViewController(withIdentifier: "planetDetails") as? PlanetDetailViewController {
//                print("PlanetDetailViewController instantiated successfully")
//                vc.planet = planets[indexPath.row]
//                navigationController?.pushViewController(vc, animated: true)
//                print("Navigation Controller: \(String(describing: navigationController))")
//            } else {
//                print("Failed to instantiate PlanetDetailViewController")
//            }
//        }
    
    
                let selectedPlanet = planets[indexPath.row]
                performSegue(withIdentifier: "planetDetails", sender: selectedPlanet)
            }
            
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "planetDetails" {
                if let detailVC = segue.destination as? PlanetDetailViewController {
                    detailVC.planet = sender as? Planet
                }
            }
        }

}



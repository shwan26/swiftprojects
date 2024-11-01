//
//  ViewController.swift
//  Collection View Class
//
//  Created by Giyu Tomioka on 8/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    let devices: [Device] = [
        Device(imageName: "1", brand: "Apple", model: "iPhone 15 pro max"),
        Device(imageName: "2", brand: "Macbook", model: "Air M3"),
        Device(imageName: "2", brand: "Macbook", model: "Air M3"),
        Device(imageName: "1", brand: "Apple", model: "iPhone 15 pro max"),
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
        return devices.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeviceCell", for: indexPath) as? DeviceCell {
            cell.configure(device: devices[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//    }
}

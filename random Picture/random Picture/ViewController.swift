//
//  ViewController.swift
//  random Picture
//
//  Created by syan k on 2024/6/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    private var images : [String] = ["cake", "cookie", "ice cream"]
    
    private func chooseImage() -> String {
        let randomIndex = Int(arc4random()) % images.count
        return images[randomIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let imagelabel = chooseImage()
        imageView1.image = UIImage(named: imagelabel)
        label1.text = "\(imagelabel)"
    }
    
}


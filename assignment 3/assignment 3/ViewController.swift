//
//  ViewController.swift
//  assignment 3
//
//  Created by syan k on 2024/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview1: UIImageView!
    @IBOutlet weak var imageview2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    private var images : [String] = ["chicken", "cow", "duck", "horse", "penguin", "sheep"]
    
    private func chooseImage() -> String {
        let randomIndex = Int(arc4random()) % images.count
        return images[randomIndex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        var imagelabel1 = chooseImage()
        var imagelabel2 = chooseImage()
        while (imagelabel1 == imagelabel2) {
            imagelabel2 = chooseImage()
        }
        imageview1.image = UIImage(named: imagelabel1)
        label1.text = "\(imagelabel1)"
        
        imageview2.image = UIImage(named: imagelabel2)
        label2.text = "\(imagelabel2)"
    }


}


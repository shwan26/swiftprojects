//
//  SecondViewController.swift
//  Class6
//
//  Created by syan k on 2024/7/19.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String = ""
    
    @IBOutlet private weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = name

        nameLabel.text = "My name is \(name)"
        
    }
    
    @IBAction func exitClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        //dismiss(animated: true)
    }
    


}

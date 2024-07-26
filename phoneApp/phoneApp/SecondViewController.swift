//
//  SecondViewController.swift
//  phoneApp
//
//  Created by syan k on 2024/7/13.
//

import UIKit

class SecondViewController: UIViewController {
    
    var phoneNumber: String = ""
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = phoneNumber
    }
    
    @IBAction func hangupPressed(_ sender: UIButton) {
        dismiss(animated: true)
        
    }

}

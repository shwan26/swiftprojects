//
//  ViewController.swift
//  Class6
//
//  Created by syan k on 2024/7/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController {
            vc.name = textField.text ?? ""
            
            navigationController?.pushViewController(vc, animated: true)
            
            
            
//            vc.modalPresentationStyle = .fullScreen
//            present(vc, animated: true)
        }
        
    }
}


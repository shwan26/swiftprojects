//
//  ViewController.swift
//  Vowels Counter
//
//  Created by syan k on 2024/7/5.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var wordTextField: UITextField!
    
    @IBOutlet weak var aView: UIView!
    @IBOutlet weak var eView: UIView!
    @IBOutlet weak var iView: UIView!
    @IBOutlet weak var oView: UIView!
    @IBOutlet weak var uView: UIView!
    
    @IBOutlet weak var aCountLabel: UILabel!
    @IBOutlet weak var eCountLabel: UILabel!
    @IBOutlet weak var iCountLabel: UILabel!
    @IBOutlet weak var oCountLabel: UILabel!
    @IBOutlet weak var uCountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aView.backgroundColor = .gray
        eView.backgroundColor = .gray
        iView.backgroundColor = .gray
        oView.backgroundColor = .gray
        uView.backgroundColor = .gray
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        print("Did Load! ")
        
        wordTextField.keyboardType = .default
        wordTextField.addTarget(self, action: #selector(wordValueChanged), for: .editingChanged)
    }
   
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func wordValueChanged() {
            aCountLabel.text = "x0"
            aView.backgroundColor = .gray
            eCountLabel.text = "x0"
            eView.backgroundColor = .gray
            iCountLabel.text = "x0"
            iView.backgroundColor = .gray
            oCountLabel.text = "x0"
            oView.backgroundColor = .gray
            uCountLabel.text = "x0"
            uView.backgroundColor = .gray
        
            checkVowels()
        
        
        func checkVowels() {
            var aCount = 0
            var eCount = 0
            var iCount = 0
            var oCount = 0
            var uCount = 0
            
            let words = wordTextField.text!
            
            for character in words.lowercased() {
                switch character {
                case "a":
                    aCount += 1
                    aCountLabel.text = "x\(aCount)"
                    aView.backgroundColor = .green
                case "e":
                    eCount += 1
                    eCountLabel.text = "x\(eCount)"
                    eView.backgroundColor = .green
                case "i":
                    iCount += 1
                    iCountLabel.text = "x\(iCount)"
                    iView.backgroundColor = .green
                case "o":
                    oCount += 1
                    oCountLabel.text = "x\(oCount)"
                    oView.backgroundColor = .green
                case "u":
                    uCount += 1
                    uCountLabel.text = "x\(uCount)"
                    uView.backgroundColor = .green
                default:
                    break
                }
            }
            
        }
        
    }

}


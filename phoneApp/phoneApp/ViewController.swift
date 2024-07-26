//
//  ViewController.swift
//  phoneApp
//
//  Created by syan k on 2024/7/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonStar: UIButton!
    @IBOutlet weak var buttonHash: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var dialButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = ""
                
    
        
    }
    
    @IBAction func Clicked1(_ sender: Any) {
        let digit = "1"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked2(_ sender: Any) {
        let digit = "2"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked3(_ sender: Any) {
        let digit = "3"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked4(_ sender: Any) {
        let digit = "4"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked5(_ sender: Any) {
        let digit = "5"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked6(_ sender: Any) {
        let digit = "6"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked7(_ sender: Any) {
        let digit = "7"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked8(_ sender: Any) {
        let digit = "8"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked9(_ sender: Any) {
        let digit = "9"
        displayLabel.text! += digit
    }
    
    @IBAction func Clicked0(_ sender: Any) {
        let digit = "0"
        displayLabel.text! += digit
    }
    
    @IBAction func ClickedStar(_ sender: Any) {
        let digit = "*"
        displayLabel.text! += digit
    }
    
    @IBAction func ClickedHash(_ sender: Any) {
        let digit = "#"
        displayLabel.text! += digit
    }
    
    
    
    @IBAction func deletePressed(_ sender: UIButton) {
        if var text = displayLabel.text, !text.isEmpty {
            text.removeLast()
            displayLabel.text = text
        }
    }

    @IBAction func dialPressed(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController {
            vc.phoneNumber = displayLabel.text ?? "" // ?? means optional
            
          
            
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        
        
            
            
    }

        

}


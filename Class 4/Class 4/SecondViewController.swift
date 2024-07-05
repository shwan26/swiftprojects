//
//  SecondViewController.swift
//  Class 4
//
//  Created by syan k on 2024/6/29.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .green
        //print("Second View did load")
        
        number1TextField.keyboardType = .numberPad
        number2TextField.keyboardType = .numberPad
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        let firstNumber = Int(number1TextField.text!)
        let secondNumber = Int(number2TextField.text!)
       
        resultLabel.text = "Result: \(firstNumber! + secondNumber!)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Second View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Second View did appear")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Second View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Second View did disappear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

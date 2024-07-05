//
//  ViewController.swift
//  Class 4
//
//  Created by syan k on 2024/6/29.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for phoneNumberTextField
        phoneNumberTextField.placeholder = "Phone Number"
        phoneNumberTextField.textContentType = .telephoneNumber
        phoneNumberTextField.keyboardType = .phonePad
        phoneNumberTextField.textColor = .red
        phoneNumberTextField.addTarget(self, action: #selector(phoneValueChanged), for: .editingChanged)
        phoneNumberTextField.delegate = self
        
        // for nameTextField
        nameTextField.addTarget(self, action: #selector(nameValueChanged), for: .editingChanged)
        // nameTextField.delegate = self // show value of begin edit & end edit
        
        // to hide the keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        print("View did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View did disappear")
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func printClicked(_ sender: Any) {
        print("I'm \(nameTextField.text!). My phone number is \(phoneNumberTextField.text!).")
    }
    
    @objc func phoneValueChanged() {
        print(phoneNumberTextField.text?.count)
    }
    
    // only for phone number
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Begin editing")
    }
    
    // only for phone number
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("End editing")
    }
    
    @objc func nameValueChanged() {
        if nameTextField.text!.count > 10 {
            print("Your name is too long")
        }
    }
    
    
    
}


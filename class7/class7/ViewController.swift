//
//  ViewController.swift
//  class7
//
//  Created by syan k on 2024/7/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isOn = UserDefaults.standard.bool(forKey: "isOn")
        toggle.isOn = isOn
        
        if let text = UserDefaults.standard.string(forKey: "text") {
            textField.text = text
        }
        
        readFromFile()
        
    }
    
    func readFromFile() {
        guard let url = Bundle.main.url(forResource: "user", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let users = try decoder.decode([User].self, from: data)
            print("users: \(users)")
//            let sample = String(data: data, encoding: .utf8)
//            print(sample)
        } catch {
            let alert = UIAlertController(title: "Error", message: "Cannot access data", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            
            print("Error \(error)")
        }
    }

    @IBAction func toggleClicked(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "isOn")
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //UserDefaults.standard.set(textField.text, forKey: "text")
        let alert = UIAlertController(title: "Error", message: "Cannot access data", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        
        let action2 = UIAlertAction(title: "Delete", style: .destructive) { _ in
            print("Deleted!!")
        }
        alert.addAction(action2)
        
        present(alert, animated: true)
    }

}


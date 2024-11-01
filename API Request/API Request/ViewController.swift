//
//  ViewController.swift
//  API Request
//
//  Created by Giyu Tomioka on 8/10/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var deviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = "https://dl.dropboxusercontent.com/scl/fi/e48y65zab4hxs3ptrv4sm/profileonly.json?rlkey=6r7k2heuf1htapxvfd9i86y0u"
//
        let url = "https://dl.dropboxusercontent.com/s/u6oc4tionx16w41/profile.json"
        
        AF.request(url).responseDecodable(of: Profile.self) {
            response in
            switch response.result {
            case .success(let value):
                self.nameLabel.text = value.firstname
                self.surnameLabel.text = value.lastname
                self.ageLabel.text = "\(value.age)"
                
                if value.gender == "m" {
                    self.genderLabel.text = "Male"
                } else {
                    self.genderLabel.text = "Female"
                }
                
                var deviceString = ""
                value.devices.forEach {
                    device in deviceString += "\(device.type) \(device.model)\n"
                }
                self.deviceLabel.text = deviceString
                
            case .failure(let error):
                print("Error: \(error)")
                
            }
        }
    }


}


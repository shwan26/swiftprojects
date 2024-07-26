//
//  ContactDetailsViewController.swift
//  Class6
//
//  Created by syan k on 2024/7/25.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()

        profileImage.contentMode = .scaleAspectFill
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 100
        
        if let contact {
            nameLabel.text = contact.name
            positionLabel.text = contact.position
            profileImage.image = UIImage(named: contact.imageName)
        }
    }
    


}

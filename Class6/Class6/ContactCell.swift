//
//  ContactCell.swift
//  Class6
//
//  Created by syan k on 2024/7/24.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImage.contentMode = .scaleAspectFill
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 60 / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(contact: Contact) {
        nameLabel.text = contact.name
        positionLabel.text = contact.position
        profileImage.image = UIImage(named: contact.imageName)
    }

}

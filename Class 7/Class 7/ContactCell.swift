//
//  ContactCell.swift
//  Class 7
//
//  Created by syan k on 2024/7/13.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var hobbysLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func set(contact: User) {
        nameLabel.text = contact.name
        
        let address = contact.address
        addressLabel.text = "\(address.number) \(address.street) \(address.postCode)"
        
        hobbysLabel.text = contact.hobbys.joined(separator: ", ")
        
    }
}

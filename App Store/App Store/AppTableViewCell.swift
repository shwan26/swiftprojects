//
//  AppTableViewCell.swift
//  App Store
//
//  Created by syan k on 2024/7/26.
//

import UIKit

class AppTableViewCell: UITableViewCell {
    
    @IBOutlet weak var appIconImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        appIconImageView.contentMode = .scaleAspectFill
        appIconImageView.clipsToBounds = true
        appIconImageView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(topTenApp: AppInfo) {
            appIconImageView.image = UIImage(named: topTenApp.appIcon)
            appNameLabel.text = topTenApp.appName
            shortDescriptionLabel.text = topTenApp.shortDescription
        }

}

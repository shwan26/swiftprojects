//
//  GradesCell.swift
//  Grade List
//
//  Created by Giyu Tomioka on 8/18/24.
//

import UIKit

class GradesCell: UITableViewCell {
    
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var creditLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
  
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    func configure(with grade: Gradelist) {
            codeLabel.text = grade.code
            nameLabel.text = grade.name
            creditLabel.text = "\(grade.credit)"
            gradeLabel.text = grade.grade
        }
}

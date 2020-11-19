//
//  SectionTableViewCell.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

class SectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var seasonLabel: UILabel!
    static let identifier = "SectionTableViewCell"
    static func nib() -> UINib{
        
        return UINib(nibName: "SectionTableViewCell", bundle: nil)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

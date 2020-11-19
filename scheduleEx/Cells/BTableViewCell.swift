//
//  BTableViewCell.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

class BTableViewCell: UITableViewCell {
    
    @IBOutlet weak var weekLabel: UILabel!
    
    static let identifier = "BTableViewCell"
    static func nib() -> UINib{
        
        return UINib(nibName: "BTableViewCell", bundle: nil)
        
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

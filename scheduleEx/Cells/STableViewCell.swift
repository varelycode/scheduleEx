//
//  STableViewCell.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

class STableViewCell: UITableViewCell {

    @IBOutlet weak var awayNameLabel: UILabel!
    @IBOutlet weak var awayCurrScoreLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var networkLabel: UILabel!
    
    static let identifier = "STableViewCell"
    static func nib() -> UINib{
        
        return UINib(nibName: "STableViewCell", bundle: nil)
        
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

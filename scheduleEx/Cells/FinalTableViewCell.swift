//
//  FinalTableViewCell.swift
//  scheduleEx
//
//  Created by viv on 11/18/20.
//

import UIKit

class FinalTableViewCell: UITableViewCell {
    
//    struct WebsiteDescription: Decodable {
//        let name: String
//        let description: String
//        let courses: [Course]
//    }
//
    
    @IBOutlet weak var awayLabel: UILabel!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var homeImg: UIImageView!
    @IBOutlet weak var sepImg: UIImageView!
    @IBOutlet weak var awayImg: UIImageView!
    
    
    
    @IBOutlet weak var homeScoreLabel: UILabel!
    @IBOutlet weak var awayScoreLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var finalLabel: UILabel!
    
    
    
    
    static let identifier = "FinalTableViewCell"
    static func nib() -> UINib{
        
        return UINib(nibName: "FinalTableViewCell", bundle: nil)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        getData()
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        let text = "Patriots"
        awayLabel.text = text.uppercased()
        // Configure the view for the selected state
    }
    
    func getData(){
        
        DataService.getJson()
        
        
    }
    
}

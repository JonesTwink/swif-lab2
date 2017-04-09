//
//  SecondViewControllerTableViewCell.swift
//  
//
//  Created by Admin on 22.03.17.
//
//

import UIKit

class SecondViewControllerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var carTitle: UILabel!    
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var region: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

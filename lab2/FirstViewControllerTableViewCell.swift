//
//  FirstViewControllerTableViewCell.swift
//  lab2
//
//  Created by Admin on 23.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit

class FirstViewControllerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var carTitle: UILabel!
    
    @IBOutlet weak var carIntroText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

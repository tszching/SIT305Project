//
//  AchievementCell.swift
//  Project2
//
//  Created by DARKEUNG on 24/5/2018.
//  Copyright © 2018 DARKEUNG. All rights reserved.
//

import UIKit

class AchievementCell: UITableViewCell {

    // All Outlets
    @IBOutlet weak var objectImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

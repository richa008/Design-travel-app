//
//  AttractionsTableViewCell.swift
//  Design
//
//  Created by Richa Deshmukh on 6/10/20.
//  Copyright © 2020 Richa Deshmukh. All rights reserved.
//

import UIKit

class AttractionsTableViewCell: UITableViewCell {

    @IBOutlet weak var attractionName: UILabel!
    @IBOutlet weak var attractionAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

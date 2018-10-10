//
//  myCell.swift
//  Tut_CustomTableViewCell
//
//  Created by ruroot on 10/7/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

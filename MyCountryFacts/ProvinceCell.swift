//
//  ProvinceCell.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ProvinceCell: UITableViewCell {

    @IBOutlet weak var provinceBackGroundThumb: UIImageView!
    @IBOutlet weak var provinceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  VehicleTableViewCell.swift
//  VehicleService
//
//  Created by Iskandar Herputra Wahidiyat on 21/08/20.
//  Copyright © 2020 Iskandar Herputra Wahidiyat. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {
    @IBOutlet weak var vehicleNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        vehicleNameLabel.text = "Honda Vario 125"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

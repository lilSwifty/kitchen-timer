//
//  AlarmsTableViewCell.swift
//  KitchenTimer
//
//  Created by Mani Sedighi on 2019-01-29.
//  Copyright © 2019 Mani Sedighi. All rights reserved.
//

import UIKit

class AlarmsTableViewCell: UITableViewCell {

    @IBOutlet weak var alarmView: UIView!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var timer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TableViewCell.swift
//  ToDo_pawanpreet300916703
//
//  Created by pawanpreet kaur on 2017-02-21.
//  Copyright © 2017 Pawanpreet kaur. All rights reserved.
// Student Name: Pawanpreet Kaur
// Student Id: 300916703

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
  
    @IBOutlet weak var label2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  InstructionTableViewCell.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class InstructionTableViewCell: UITableViewCell {

    @IBOutlet weak var formatLabel: UILabel!
    @IBOutlet weak var mnemonicLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

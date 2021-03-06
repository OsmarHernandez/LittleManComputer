//
//  MemoryTableViewCell.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class MemoryTableViewCell: UITableViewCell {

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var valueTextField: UITextField!
    
    var returnValue = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        doneEnabler()
    }
    
    func doneEnabler() {
        // Enable done key for number pad
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.done))
        
        toolBar.setItems([doneButton], animated: false)
        
        valueTextField.inputAccessoryView = toolBar
    }
    
    @objc func done() {
        guard let value = valueTextField.text else {
            return
        }
        
        returnValue = Int(value)!
        
        valueTextField.text = "\(returnValue)"
        
        valueTextField.resignFirstResponder()
    }
}

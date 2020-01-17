//
//  MemoryViewController.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class MemoryViewController: UITableViewController {
    
    var littleMan: LittleManComputer!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return littleMan.memory.setOfRegisters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memoryTableViewCell", for: indexPath) as! MemoryTableViewCell
        
        cell.addressLabel.text = "Address: \(indexPath.row)"
        cell.valueTextField.text = "\(littleMan.memory.setOfRegisters[indexPath.row])"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let addressCell = tableView.cellForRow(at: indexPath) as! MemoryTableViewCell
        
        if let value = Int(addressCell.valueTextField.text!), value != 0 {
            littleMan.memory.store(value, in: indexPath.row)
        }
    }
}

extension MemoryViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

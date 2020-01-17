//
//  Memory.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

struct Memory {
    
    var setOfRegisters: [Int]
    
    func load(_ address: Int) -> Int {
        return setOfRegisters[address]
    }
    
    mutating func store(_ value: Int, in address: Int) {
        self.setOfRegisters[address] = value
    }
}

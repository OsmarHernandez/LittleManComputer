//
//  InstructionCounter.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

struct InstructionCounter {
    var counter: Int
    
    mutating func increment() {
        self.counter += 1
    }
    
    mutating func branch(to address: Int) {
        self.counter = address
    }
}

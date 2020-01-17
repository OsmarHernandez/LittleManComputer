//
//  Calculator.swift
//  LittleManComputer
//
//  Created by Osmar Hernández on 17/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

struct Calculator {
    var acumulator: Int
    
    mutating func add(_ value: Int) {
        self.acumulator += value
    }
    
    mutating func sub(_ value: Int) {
        self.acumulator -= value
    }
}

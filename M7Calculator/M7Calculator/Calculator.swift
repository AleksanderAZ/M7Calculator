//
//  Calculator.swift
//  M7Calculator
//
//  Created by Student-2 on 11/10/18.
//  Copyright © 2018 Student-2. All rights reserved.
//

import Foundation

typealias Operation = (Double, Double) -> Double


enum RPNElement {
    case operand(Double)
    case `operator`(String, Operation)
}

enum CompassPoint  {
    case North
    case South
    case East
    case West
}

struct Calculator {
    //5 2 +
    // operand1 operand2 operator
    func calculate(array: [RPNElement]) -> Double {
        
        return 0
    }
}

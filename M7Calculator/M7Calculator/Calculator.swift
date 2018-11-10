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
    
    static var plus: RPNElement { return RPNElement.operator("+"){ $0 + $1 }}
    static var mult: RPNElement { return RPNElement.operator("*", { (one, two) in one * two })}
}


struct Calculator {
    //5 2 +
    // operand1 operand2 operator
    func calculate(array: [RPNElement]) -> Double {
        var args: [Double] = []
        var result: Double = 0
        array.forEach { (item) in
            switch item {
            case .operand(let number):
                args.append(number)
            case .operator(_, let operation):
                let operand1 = args[args.count - 1]
                let operand2 = args[args.count - 2]
                result = operation(operand1, operand2)
            }
        }
        
        return result
    }
}

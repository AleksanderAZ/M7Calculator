//
//  EquationSolver.swift
//  M7Calculator
//
//  Created by Aleksey Tyurenkov on 12/15/18.
//  Copyright © 2018 Student-2. All rights reserved.
//

import Foundation

enum ComplexNumberPresentationType {
    case algebraic
    case exponential
    case trigone
}


protocol QuadraticEquationSolver {
    func solve(a: Float, b: Float, c: Float, type: ComplexNumberPresentationType) -> String
}



class FirstEquationSolver: QuadraticEquationSolver {
    
    func solve(a: Float, b: Float, c: Float, type: ComplexNumberPresentationType) -> String {
        return ""
    }
    

}

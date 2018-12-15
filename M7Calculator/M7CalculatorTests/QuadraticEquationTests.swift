//
//  QuadraticEquationTests.swift
//  M7CalculatorTests
//
//  Created by Aleksey Tyurenkov on 12/15/18.
//  Copyright © 2018 Student-2. All rights reserved.
//

import XCTest
@testable import M7Calculator


class QuadraticEquationTests: XCTestCase {

    var solver: QuadraticEquationSolver!
    
    override func setUp() {
        solver = FirstEquationSolver()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testMySolver() {
        let result = solver.solve(a:1.0, b:6.0, c:9.0, type: ComplexNumberPresentationType.algebraic)
        XCTAssertEqual(result, "-3,-3")
    }
}

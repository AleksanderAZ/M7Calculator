//
//  M7CalculatorTests.swift
//  M7CalculatorTests
//
//  Created by Student-2 on 11/10/18.
//  Copyright © 2018 Student-2. All rights reserved.
//

import XCTest
@testable import M7Calculator

class M7CalculatorTests: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        calculator = Calculator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test5plus2() {
        let operand1 = RPNElement.operand(5)
        let operand2 = RPNElement.operand(2)
        let operatorPlus = RPNElement.plus
        let rpnFile = [operand1, operand2, operatorPlus]
        let result = calculator.calculate(array: rpnFile)
        XCTAssert((result == 7), "5 + 2 equal 7")
        
    }

    func test3plus7() {
        let operand1 = RPNElement.operand(3)
        let operand2 = RPNElement.operand(7)
        let operatorPlus = RPNElement.plus
        let rpnFile = [operand1, operand2, operatorPlus]
        let result = calculator.calculate(array: rpnFile)
        XCTAssert((result == 10), "3 + 7 equal 10")
    }
    
    func testNegativeNumber() {
        let operand1 = RPNElement.operand(-1)
        let operand2 = RPNElement.operand(6)
        let operatorPlus = RPNElement.plus
        let rpnFile = [operand1, operand2, operatorPlus]
        let result = calculator.calculate(array: rpnFile)
        XCTAssert((result == 5), "-1 + 6 equal 5")
    }
    
    func testMultiple() {
        let operand1 = RPNElement.operand(2)
        let operand2 = RPNElement.operand(6)
        let operator1 = RPNElement.mult
        let rpnFile = [operand1, operand2, operator1]
        let result = calculator.calculate(array: rpnFile)
        XCTAssert((result == 12), "2 * 6 equal 12")
    }

    func test3plus7plus8() {
        let operand1 = RPNElement.operand(3)
        let operand2 = RPNElement.operand(7)
        let operand3 = RPNElement.operand(8)
        let operator1 = RPNElement.plus
        let operator2 = RPNElement.plus
        let rpnFile = [operand1, operand2, operator1, operand3, operator2]
        let result = calculator.calculate(array: rpnFile)
        XCTAssert((result == 18), "3 + 7 + 8 equal 18")
    }
    
}

//
//  UtilityTests.swift
//  BotTestTests
//
//  Created by B0208144 on 29/10/18.
//  Copyright © 2018 B0208144. All rights reserved.
//

import XCTest

@testable import BotTest

class UtilityTests: XCTestCase {
    
    let utility = Utility()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testReverseString() {
        let tempString = "string"
        let expectation = "gnirts"
        let result = utility.reverseString(tempString)
        XCTAssertTrue(result == expectation)
    }
    
    func testLastString() {
        let tempString = "string"
        let expectation = "g"
        let result = utility.lastCharacterOfString(tempString)
        XCTAssert(result != nil)
        XCTAssertTrue(String(result!) == expectation)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
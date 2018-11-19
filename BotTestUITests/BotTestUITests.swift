//
//  BotTestUITests.swift
//  BotTestUITests
//
//  Created by B0208144 on 29/10/18.
//  Copyright © 2018 B0208144. All rights reserved.
//

import XCTest

class BotTestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let userNameTextField = app.textFields["User Name"]
        userNameTextField.tap()
        userNameTextField.typeText("a")
        
        let passwordTextField = app.secureTextFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText("1Abcdefg")
        
        app.buttons["Login"].tap()
        
        let navigationBar = app.navigationBars["Logged In Screen"]
        XCTAssertTrue(navigationBar.exists)
    }
}

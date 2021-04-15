//
//  SwiftWebViewAppUITests.swift
//  SwiftWebViewAppUITests
//
//  Created by HungNV on 4/15/21.
//  Copyright © 2021 NIFTY Corporation. All rights reserved.
//

import XCTest

class SwiftWebViewAppUITests: XCTestCase {
    var app: XCUIApplication!
    var btnInfomation: XCUIElement!
    let content = "mobile backend"
    
    // MARK: - Setup for UI Test
    override func setUp() {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        btnInfomation = app.buttons["btnInfomation"]
    }
    
    func testOpenWebView() throws {
        app.launch()
        XCTAssert(app.staticTexts["WebViewApp"].exists)
        XCTAssert(btnInfomation.exists)
        btnInfomation.tap()
        let predicate = NSPredicate(format: "label CONTAINS '\(content)'")
        let label = app.staticTexts.element(matching: predicate)
        XCTAssertTrue(label.waitForExistence(timeout: 20))
    }
}

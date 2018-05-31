//
//  HomepageUITests.swift
//  HomepageUITests
//
//  Created by Jack Dewinter on 31/05/2018.
//  Copyright © 2018 MixMakers. All rights reserved.
//

import XCTest
@testable import MixMakers

class HomepageUITests: XCTestCase {
    
        
    override func setUp() {
        super.setUp()
        let 
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSearch() {
        let app = XCUIApplication()
        app.launch()
        let searchButton = app.buttons["Search"]
        XCTAssertTrue(searchButton.exists, "Search button exists")
    }
    
    func testSendSearchTerm() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let cocktailController = storyboard.instantiateViewController(withIdentifier: "Cocktails") as! CocktailListViewController
        let cocktail = CocktailService()
        let app = XCUIApplication()
        app.launch()
        let searchButton = app.buttons["Search"]
        let searchField = app.textFields["searchTerm"]
        searchField.tap()
        searchField.typeText("gin")
        searchButton.tap()
        XCTAssertTrue(cocktailController.searchTerm == "gin")
    }
    
}

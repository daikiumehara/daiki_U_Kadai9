//
//  NameButtonTests.swift
//  Kadai9Tests
//
//  Created by daiki umehara on 2021/08/13.
//

import XCTest
@testable import Kadai9

class NameButtonTests: XCTestCase {

    var nameButton: NameButton!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.nameButton = NameButton()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testGetNameAndConfigure() throws {
        XCTAssertEqual(nameButton.getName(), "none")
        nameButton.conigure("東京都")
        XCTAssertEqual(nameButton.getName(), "東京都")
    }

}

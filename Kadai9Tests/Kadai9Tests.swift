//
//  Kadai9Tests.swift
//  Kadai9Tests
//
//  Created by daiki umehara on 2021/08/12.
//

import XCTest
@testable import Kadai9

class Kadai9Tests: XCTestCase {

    var nameButton: NameButton!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.nameButton = NameButton()
        nameButton.conigure("東京都")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertEqual(nameButton.getName(), "東京都")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

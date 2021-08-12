//
//  Kadai9UITests.swift
//  Kadai9UITests
//
//  Created by daiki umehara on 2021/08/12.
//

import XCTest

class Kadai9UITests: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // 初めにlabelが未選択になっているか確認
        var name = "未選択"
        searchString(name)
        // 次のページに行って何もせずに戻った時、labelが未選択のままになっているか確認
        tapNextButton()
        tapCancelButton()
        searchString(name)

        // 次のページに行って東京都のボタンを押して戻った時、labelが東京都になっているか確認
        name = "東京都"
        tapNextButton()
        tapNameButton(name)
        tapCancelButton()
        searchString(name)

        // 次のページに行って何もせずに戻った時、labelが東京都のままになっているか確認
        tapNextButton()
        tapCancelButton()
        searchString(name)

        // 次のページに行って埼玉県のボタンを押して戻った時、labelが埼玉県になっているか確認
        name = "埼玉県"
        tapNextButton()
        tapNameButton(name)
        tapCancelButton()
        searchString(name)
    }

    func tapNextButton() {
        app.buttons["入力"].tap()
    }

    func tapCancelButton() {
        app.buttons["キャンセル"].tap()
    }

    func tapNameButton(_ name: String) {
        app.buttons["\(name)"].tap()
    }

    func searchString(_ string: String) {
        XCTAssert(app.staticTexts["\(string)"].isHittable)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

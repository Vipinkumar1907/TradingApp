//
//  TradingAppTests.swift
//  TradingAppTests
//
//  Created by Vinod Gupta on 23/05/24.
//

import XCTest
@testable import TradingApp

final class TradingAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testUserHolding() throws {
    }
    
    func testListOfUsersHolding() {
        let viewModel = HomeViewModel()
        viewModel.holdings = [UserHolding(symbol: "Ed", quantity: 1, ltp: 1, avgPrice: 1, close: 1), UserHolding(symbol: "Cd", quantity: 1, ltp: 1, avgPrice: 1, close: 1)]
        XCTAssert(viewModel.holdings.count == 0)
        XCTAssertTrue(viewModel.holdings.count == 0)
        XCTAssertEqual(viewModel.holdings.count, 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }


}



//
//  KataMagicCounterTests.swift
//  KataMagicCounterTests
//
//  Created by Fernando Gil Otero on 12/12/2019.
//  Copyright © 2019 Fernando Gil Otero. All rights reserved.
//

import Foundation
import XCTest
@testable import KataMagicCounter

class KataMagicCounterTests: XCTestCase {
    
    private var storage: DefaultsStorage!
    private var random: MockRandomGenerator!
    private var magicCounter: MagicCounter!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        storage = DefaultsStorage()
        random = MockRandomGenerator()
        //magicCounter = MagicCounter(storage: storage, randomGenerator: random)
        storage.clear()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testReturnsTheRandomValueIfTheCounterWasNotSavedPreviouslyAndTheRandomValueIsGreaterThan100() {
        random.value = 101
        let result = magicCounter.increase()
        XCTAssertEqual(result, 101)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    private class MockRandomGenerator: RandomNumberGenerator {

        var value = 0

        func randomValue() -> Int {
            return value
        }

    }

}

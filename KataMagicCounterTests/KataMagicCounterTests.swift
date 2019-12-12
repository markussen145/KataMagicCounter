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
    
    private var random: MockRandomGenerator!
    private var storage : Storage!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        //storage.clear()
        var random = MockRandomGenerator()
        var key = "valueKey"
        
    }

    override func tearDown() {
        //storage.clear()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSave(){
        //random.value = 99
    }
    
    func testGet(){
        
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

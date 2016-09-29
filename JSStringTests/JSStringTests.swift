//
//  JSStringTests.swift
//  JSStringTests
//
//  Created by KimJungSu on 2016. 9. 29..
//  Copyright © 2016 ODOV. All rights reserved.
//

import XCTest
@testable import JSString

class JSStringTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testStringLength() {
        
        let str = "Welcome to Korea"
        
        XCTAssertEqual(str.length(), 16)
        
        let emptyStr = ""
        
        XCTAssertEqual(emptyStr.length(), 0)
    }

    func testSubstring() {
        
        let str = "Hello Tiger"

        XCTAssertEqual(str.substring(withRange: JSRange.init(start: 0, length: 5)), "Hello")
        XCTAssertEqual(str.substring(withRange: JSRange.init(start: 0, length: 5)).length(), 5)
        
        XCTAssertEqual(str.substring(5), "Hello")
        XCTAssertEqual(str.substring(start: 6), "Tiger")
        
    }
    
}

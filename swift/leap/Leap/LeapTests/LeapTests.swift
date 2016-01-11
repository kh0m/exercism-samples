//
//  LeapTests.swift
//  LeapTests
//
//  Created by Hom, Kenneth on 10/30/15.
//  Copyright © 2015 Hom, Kenneth. All rights reserved.
//

import XCTest

// Apple Swift version 2.0

class LeapTest : XCTestCase {
    
    func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear)
    }
    
    func testAnyOldYear() {
        let year = Year(calendarYear: 1997)
        XCTAssertTrue(!year.isLeapYear)
    }
    
    func testCentury() {
        let year = Year(calendarYear: 1900)
        XCTAssertTrue(!year.isLeapYear)
    }
    
    func testExceptionalCentury() {
        let year = Year(calendarYear: 2400)
        XCTAssertTrue(year.isLeapYear)
    }
    
}

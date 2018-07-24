import XCTest

import msgpackTests

var tests = [XCTestCaseEntry]()
tests += msgpackTests.allTests()
XCTMain(tests)
//
//  TetProofnTests.swift
//  TetProofnTests
//
//  Created by Reza on 11/04/19.
//  Copyright © 2019 Kuwux. All rights reserved.
//

import XCTest
@testable import TetProofn
class TetProofnTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConvertTime(){
        XCTAssertEqual(TestProofn.convertTime(timeString: "07:05:45PM"), "19:05:45")
        XCTAssertEqual(TestProofn.convertTime(timeString: "12:00:00AM"), "00:00:00")
        XCTAssertEqual(TestProofn.convertTime(timeString: "12:00:00PM"), "12:00:00")
//        XCTAssertEqual(TestProofn.convertTime(timeString: "12:24:34PM"), " ")
    }
    
    func testStaircase(){
        let a = "    #\n   ##\n  ###\n ####\n#####"
        XCTAssertEqual(TestProofn.stairCase(n: 5),a)
        
        let b = "  #\n ##\n###"
        XCTAssertEqual(TestProofn.stairCase(n: 3),b)
        
        let c = "     #\n    ##\n   ###\n  ####\n #####\n######"
        XCTAssertEqual(TestProofn.stairCase(n: 6),c)
    }

    func testEqualizeArray() {
        XCTAssertEqual(TestProofn.minimumDeletion(listNumber: [3,3,2,1,3]),2)
        XCTAssertEqual(TestProofn.minimumDeletion(listNumber: [1,3,3,1,2,3,3,3]),3)
        XCTAssertEqual(TestProofn.minimumDeletion(listNumber: [4,2,1,1,1,3,3,3]),5)
    }
    
    func testBiggerIsGreater() {
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "ab"),"ba")
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "bb"),"no answer")
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "hefg"),"hegf")
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "dhck"),"dhkc")
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "dkhc"),"hcdk")
        XCTAssertEqual(TestProofn.biggerIsGreater(str: "aazz"),"azaz")
    }
    
    func testReverseString(){
        XCTAssertEqual(TestProofn.reverseStringRecursion(str: "abc"),"cba")
        XCTAssertEqual(TestProofn.reverseStringRecursion(str: "good"),"doog")
        XCTAssertEqual(TestProofn.reverseStringRecursion(str: "percobaan"),"naabocrep")
    }
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

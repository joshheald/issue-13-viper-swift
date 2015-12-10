//
//  AddItemInteractorTests.swift
//  VIPER-SWIFT
//
//  Created by Josh Heald on 10/12/2015.
//  Copyright © 2015 Conrad Stoll. All rights reserved.
//

import XCTest

@testable import VIPER_SWIFT

class AddItemInteractorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_showAddItemInterface_callsPresentAddItemInterface_onInteractorOutput() {
        let mockInteractorOutput = MockAddItemInteractorOutput()
        let sut = AddItemInteractor(output: mockInteractorOutput)
        sut.showAddInterface()
        XCTAssertTrue(mockInteractorOutput.presentAddInterfaceWasCalled)
    }
    
}

extension AddItemInteractorTests {
    class MockAddItemInteractorOutput: AddItemInteractorOutput {
        var presentAddInterfaceWasCalled = false
        func presentAddInterface() {
            presentAddInterfaceWasCalled = true
        }
    }
}
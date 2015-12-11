//
//  ListEventHandler.swift
//  VIPER-SWIFT
//
//  Created by Josh Heald on 08/12/2015.
//  Copyright © 2015 Conrad Stoll. All rights reserved.
//

import XCTest
@testable import VIPER_SWIFT

class ListEventHandlerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_addNewEntryTapped_tellsTheAddInterfaceInteractorToShowTheAddInterface() {
        let mockAddInterfaceInteractor = MockAddItemInterfaceInteractor()
        let sut = ListEventHandler(listInteractor: MockListInteractor(), addItemInteractor: mockAddInterfaceInteractor)
        sut.addNewEntryTapped()
        XCTAssertTrue(mockAddInterfaceInteractor.showAddInterfaceWasCalled)
    }
    
    func test_viewWillAppear_tellsTheInteractorToFindUpcomingItems() {
        let mockInteractor = MockListInteractor()
        let sut = ListEventHandler(listInteractor: mockInteractor, addItemInteractor: MockAddItemInterfaceInteractor())
        sut.viewWillAppear()
        XCTAssertTrue(mockInteractor.findUpcomingItemsWasCalled)
    }
    
    func test_addModuleDidSaveAddAction_tellsTheInteractorToFindUpcomingItems() {
        let mockInteractor = MockListInteractor()
        let sut = ListEventHandler(listInteractor: mockInteractor, addItemInteractor: MockAddItemInterfaceInteractor())
        sut.addModuleDidSaveAddAction()
        XCTAssertTrue(mockInteractor.findUpcomingItemsWasCalled)
    }
    
    func test_addModuleDidCancelAddAction_DoesNotTellTheInteractorToFindUpcomingItems() {
        let mockInteractor = MockListInteractor()
        let sut = ListEventHandler(listInteractor: mockInteractor, addItemInteractor: MockAddItemInterfaceInteractor())
        sut.addModuleDidCancelAddAction()
        XCTAssertFalse(mockInteractor.findUpcomingItemsWasCalled)
    }
}

extension ListEventHandlerTests {
    class MockAddItemInterfaceInteractor: AddItemInterfaceInteractorInput {
        var showAddInterfaceWasCalled = false
        func showAddInterface() {
            showAddInterfaceWasCalled = true
        }
    }
    
    class MockListInteractor: ListInteractorInput {
        var findUpcomingItemsWasCalled = false
        func findUpcomingItems() {
            findUpcomingItemsWasCalled = true
        }
    }
}
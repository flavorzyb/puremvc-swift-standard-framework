//
//  MediatorTest.swift
//  PureMVC SWIFT Standard
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import XCTest
import PureMVC

/**
Test the PureMVC Mediator class.

`@see org.puremvc.swift.multicore.interfaces.IMediator IMediator`
`@see org.puremvc.swift.multicore.patterns.mediator.Mediator Mediator`
*/
class MediatorTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /**
    Tests getting the name using Mediator class accessor method.
    */
    func testNameAccessor() {
        // Create a new Mediator and use accessors to set the mediator name
        let mediator: Mediator = Mediator()
        
        // test assertions
        XCTAssertTrue(mediator.mediatorName == Mediator.NAME, "Expecting mediator.mediatorName == Mediator.NAME()")
    }
    
    /**
    Tests getting the name using Mediator class accessor method.
    */
    func testViewAccessor() {
        // Create a view object
        let view = Notification(name: "test", body: 4)
        
        // Create a new Proxy and use accessors to set the proxy name
        let mediator = Mediator(mediatorName: Mediator.NAME, viewComponent: view)
        
        // test assertions
        XCTAssertTrue(mediator.viewComponent === view, "Expecting mediator.viewComponent === view")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }

}

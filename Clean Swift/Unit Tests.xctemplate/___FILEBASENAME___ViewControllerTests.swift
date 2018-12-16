//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    var sut: ___VARIABLE_sceneName___ViewController!
    var window: UIWindow!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___ViewController() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___ViewController") as? ___VARIABLE_sceneName___ViewController
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: - Test Doubles

    class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic {
        
        // MARK: Spied Methods

        var fetchFromDataStoreCalled = false
        func fetchFromDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromDataStore.Request) {
            fetchFromDataStoreCalled = true
        }

        var ___VARIABLE_sceneName___Called = false
        func ___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Request) {
            ___VARIABLE_sceneName___Called = true
        }
    }

    class ___VARIABLE_sceneName___RoutingLogicSpy: ___VARIABLE_sceneName___RoutingLogic {
    }

    // MARK: - Tests

    func testShouldFetchFromDataStoreWhenViewIsLoaded() {
        // given
        let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
        sut.interactor = spy

        // when
        loadView()

        // then
        XCTAssertTrue(spy.fetchFromDataStoreCalled, "viewDidLoad() should ask the interactor to fetch from DataStore")
    }

    func testDisplayFetchFromDataStoreResult() {
    }
}

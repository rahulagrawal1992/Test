//
//  TechgigTests.swift
//  TechgigTests
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig
class TechgigTests: XCTestCase {
    static let tgToken = "l6GJjJJTiJiki8iGZLSKkIuYi5Wvm85Th6@@OY0lJZEZkV5ReWHlTVmZISGNjSo9ZWXZVWVpeXFM="
    static let customDeepLinkPath = "techgig-app://com.timesgroup.techgig"
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    static func setMyDeepLink(url: String, checkAutoLogin: Bool = false) ->  DeepLinkModel.DeepLinkType {
        let bool = DeepLinkAnalyzer().parseUri(url: URL(string: url.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)!
)!)
        XCTAssertTrue(bool)
        XCTAssertTrue(CachingManager.shared.deepLink != nil)
        let token = CachingManager.shared.deepLink!.tgtoken
        if checkAutoLogin {
            XCTAssertTrue(token != nil)
            XCTAssertTrue(token == TechgigTests.tgToken)
        } else {
            XCTAssertTrue(token == nil)
        }
        
        return CachingManager.shared.deepLink!.type
    }
    
}

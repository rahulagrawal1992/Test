//
//  WebinarDeepLinkTests.swift
//  TechGig-iOS
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig

class WebinarDeepLinkTests: XCTestCase {
    
    let webinarList = "https://www.techgig.com/webinar"
    let webinarCategory = "https://www.techgig.com/webinar/upcoming"
    let webinarDetails = "https://www.techgig.com/webinar/Encrypting-sensitive-data-w"
        + "ith-Salesforce-Shield-946"
    let webinarSearch = "https://www.techgig.com/webinar/search/php"
    let webinarTag = "https://www.techgig.com/webinar/tag/java"
    let webinarDetailsAutoLogin = "https://www.techgig.com/webinar/Encrypting-sensitive-data-with-Sale"
        + "sforce-Shield-946?auto_login=" + TechgigTests.tgToken
    let webinarListAutoLogin = "https://www.techgig.com/webinar?auto_login=" + TechgigTests.tgToken
    
    let webinarListCustom = TechgigTests.customDeepLinkPath + "/webinar"
    let webinarCategoryCustom = TechgigTests.customDeepLinkPath + "/webinar/upcoming"
    let webinarDetailsCustom = TechgigTests.customDeepLinkPath + "/webinar/Encrypting-sensitive-data-w"
        + "ith-Salesforce-Shield-946"
    let webinarSearchCustom = TechgigTests.customDeepLinkPath + "/webinar/search/php"
    let webinarTagCustom = TechgigTests.customDeepLinkPath + "/webinar/tag/java"
    let webinarDetailsAutoLoginCustom = TechgigTests.customDeepLinkPath + "/webinar/Encrypting-sensitive-data-with-Sale"
        + "sforce-Shield-946?auto_login=" + TechgigTests.tgToken
    let webinarListAutoLoginCustom = TechgigTests.customDeepLinkPath + "/webinar?auto_login=" + TechgigTests.tgToken
    
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWebinarList() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarList) == .webinarList)
    }
    
    func testWebinarCategories() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarCategory) == .webinarCategory(category: "upcoming"))
    }
    
    func testWebinarDetails() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarDetails) == .webinarDetails(webinarId: "946"))
    }
    
    func testWebinarSearch() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarSearch) == .webinarKeywordSearch(keyword: "php"))
    }
    
    func testWebinarTag() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarTag) == .webinarTagSearch(tag: "java"))
    }
    
    func testWebinarDetailsAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarDetailsAutoLogin, checkAutoLogin: true) == .webinarDetails(webinarId: "946"))
    }
    
    func testWebinarListAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarListAutoLogin, checkAutoLogin: true) == .webinarList)
    }
    
    func testWebinarListCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarListCustom) == .webinarList)
    }
    
    func testWebinarCategoriesCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarCategoryCustom) == .webinarCategory(category: "upcoming"))
    }
    
    func testWebinarDetailsCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarDetailsCustom) == .webinarDetails(webinarId: "946"))
    }
    
    func testWebinarSearchCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarSearchCustom) == .webinarKeywordSearch(keyword: "php"))
    }
    
    func testWebinarTagCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarTagCustom) == .webinarTagSearch(tag: "java"))
    }
    
    func testWebinarDetailsAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarDetailsAutoLoginCustom, checkAutoLogin: true) == .webinarDetails(webinarId: "946"))
    }
    
    func testWebinarListAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: webinarListAutoLoginCustom, checkAutoLogin: true) == .webinarList)
    }
}

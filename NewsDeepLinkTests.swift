//
//  NewsDeepLinkTests.swift
//  TechGig-iOS
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig

class NewsDeepLinkTests: XCTestCase {
    
    let newsListURL = "https://www.techgig.com/tech-news"
    let newsCategory = "https://www.techgig.com/tech-news/social-media"
    let newsDetails = "https://www.techgig.com/tech-news/Amazon-brings-its-"
        + "Dash-buttons-to-the-UK-for-ordering-staples-with-one-touch-63985"
    let newsSearchType1 = "https://www.techgig.com/editor_pick.php?keyword=samsung"
    let newsSearchType2 = "https://www.techgig.com/tech-news/samsung"
    let newsDetailAutoLogin = "https://www.techgig.com/tech-news/"
        + "Amazon-brings-its-Dash-buttons-to-the-UK-for-ordering-staples-with-one-"
        + "touch-63985?auto_login=" + TechgigTests.tgToken
    let newsListWithAutoLogin = "https://www.techgig.com/tech-news?auto_login=" + TechgigTests.tgToken
    
    let newsListURLCustom = TechgigTests.customDeepLinkPath + "/tech-news"
    let newsCategoryCustom = TechgigTests.customDeepLinkPath + "/tech-news/social-media"
    let newsDetailsCustom = TechgigTests.customDeepLinkPath + "/tech-news/Amazon-brings-its-"
        + "Dash-buttons-to-the-UK-for-ordering-staples-with-one-touch-63985"
    let newsSearchType1Custom = TechgigTests.customDeepLinkPath + "/editor_pick.php?keyword=samsung"
    let newsSearchType2Custom = TechgigTests.customDeepLinkPath + "/tech-news/samsung"
    let newsDetailAutoLoginCustom = TechgigTests.customDeepLinkPath + "/tech-news/"
        + "Amazon-brings-its-Dash-buttons-to-the-UK-for-ordering-staples-with-one-"
        + "touch-63985?auto_login=" + TechgigTests.tgToken
    let newsListWithAutoLoginCustom = TechgigTests.customDeepLinkPath + "/tech-news?auto_login=" + TechgigTests.tgToken

    
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNewsList() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsListURL) == .newsList)
    }
    
    func testNewsCategory() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsCategory) == .newsCategory(category: "social-media"))
    }
    
    func testNewsDetails() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsDetails) == .newsDetails(newsId: "63985"))
    }
    
    func testNewsSearchType1() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsSearchType1) == .newsSearch(keyword: "samsung"))
    }
    func testNewsSearchType2() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsSearchType2) == .newsSearch(keyword: "samsung"))
    }
    func testNewsDetailAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsDetailAutoLogin, checkAutoLogin: true) == .newsDetails(newsId: "63985"))
    }
    func testNewsListWithAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsListWithAutoLogin, checkAutoLogin: true) == .newsList)
    }
    func testNewsListCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsListURLCustom) == .newsList)
    }
    
    func testNewsCategoryCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsCategoryCustom) == .newsCategory(category: "social-media"))
    }
    
    func testNewsDetailsCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsDetailsCustom) == .newsDetails(newsId: "63985"))
    }
    
    func testNewsSearchType1Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsSearchType1Custom) == .newsSearch(keyword: "samsung"))
    }
    func testNewsSearchType2Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsSearchType2Custom) == .newsSearch(keyword: "samsung"))
    }
    func testNewsDetailAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsDetailAutoLoginCustom, checkAutoLogin: true) == .newsDetails(newsId: "63985"))
    }
    func testNewsListWithAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: newsListWithAutoLoginCustom, checkAutoLogin: true) == .newsList)
    }

}

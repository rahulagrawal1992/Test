//
//  JobsSearchDeepLinkTests.swift
//  TechGig-iOS
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig

class JobsSearchDeepLinkTests: XCTestCase {
    
    let jobList = "https://www.techgig.com/jobs"
    let jobSearchCity = "https://www.techgig.com/jobs/city/delhi"
    let jobDetail = "https://www.techgig.com/jobs/Senior-Java-Developer/38803"
    let jobDetail2 = "https://www.techgig.com/jobs/Senior-Java-Developer/38803/"
    let jobDetailMailer = "https://www.techgig.com/jobs/Cognizant-Off-Campus-Drive-For-Freshers-as-"
        + "Software-Developers-Across-India/37532/?utm_source=Mailer&utm_medium="
        + "TJ_batch&utm_campaign=Job_Promotion_Mailer_2016-07-21&date=2016-07-20"
        + "&auth_token=a3Jpc2huZW5kdS5iaGFuZGFyaTg5MzkwOjc4MTA0MTU2OjE0Njc5OTMzMj"
        + "UxMjA5NjAwMDAwOlRH&entity_name=company_jobs_details&tid=344248129"
        + "&etoken="
        + "a3Jpc2huZW5kdS5iaGFuZGFyaTg4OEBnbWFpbC5jb20jJCNLcmlzaG5lbmR1IEJoYW5k"
        + "YXJpIyQj&activity_name=MTU2MjI4&template_type=0"
    let jobSearchType1 = "https://www.techgig.com/jobs/java"
    let jobSearchType2 = "https://www.techgig.com/job_search.php?txtKeyword=php&cboWorkExp1=3"
        + "&txtLocation=Noida%2FGreater+Noida%2C+"
    let jobDetailsAutoLogin = "https://www.techgig.com/jobs/Team-Lead-Application-Development/"
        + "57879388?auto_login=" + TechgigTests.tgToken
    let jobListAutoLogin = "https://www.techgig.com/jobs?pDate=Y&auto_login=" + TechgigTests.tgToken
    
    let jobListCustom = TechgigTests.customDeepLinkPath + "/jobs"
    let jobSearchCityCustom = TechgigTests.customDeepLinkPath + "/jobs/city/delhi"
    let jobDetailCustom = TechgigTests.customDeepLinkPath + "/jobs/Senior-Java-Developer/38803"
    let jobDetail2Custom = TechgigTests.customDeepLinkPath + "/jobs/Senior-Java-Developer/38803/"
    let jobDetailMailerCustom = TechgigTests.customDeepLinkPath + "/jobs/Cognizant-Off-Campus-Drive-For-Freshers-as-"
        + "Software-Developers-Across-India/37532/?utm_source=Mailer&utm_medium="
        + "TJ_batch&utm_campaign=Job_Promotion_Mailer_2016-07-21&date=2016-07-20"
        + "&auth_token=a3Jpc2huZW5kdS5iaGFuZGFyaTg5MzkwOjc4MTA0MTU2OjE0Njc5OTMzMj"
        + "UxMjA5NjAwMDAwOlRH&entity_name=company_jobs_details&tid=344248129"
        + "&etoken="
        + "a3Jpc2huZW5kdS5iaGFuZGFyaTg4OEBnbWFpbC5jb20jJCNLcmlzaG5lbmR1IEJoYW5k"
        + "YXJpIyQj&activity_name=MTU2MjI4&template_type=0"
    let jobSearchType1Custom = TechgigTests.customDeepLinkPath + "/jobs/java"
    let jobSearchType2Custom = TechgigTests.customDeepLinkPath + "/job_search.php?txtKeyword=php&cboWorkExp1=3"
        + "&txtLocation=Noida%2FGreater+Noida%2C+"
    let jobDetailsAutoLoginCustom = TechgigTests.customDeepLinkPath + "/jobs/Team-Lead-Application-Development/"
        + "57879388?auto_login=" + TechgigTests.tgToken
    let jobListAutoLoginCustom = TechgigTests.customDeepLinkPath + "/jobs?pDate=Y&auto_login=" + TechgigTests.tgToken
    
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testJobList() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobList) == .jobList)
    }
    
    func testJobSearchCity() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchCity) == .jobSearch(keyword: "", experience: "", location: "delhi"))
    }
    
    func testJobDetail() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetail) == .jobDetails(jobId: "38803"))
    }
    
    func testJobDetail2() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetail2) == .jobDetails(jobId: "38803"))
    }
    
    func testJobDetailsFromMailer() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetailMailer) == .jobDetails(jobId: "37532"))
    }
    
    func testJobSearchType1() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchType1) == .jobSearch(keyword: "java", experience: "", location: ""))
    }
    
    func testjobSearchType2() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchType2) == .jobSearch(keyword: "php", experience: "3", location: "Noida/Greater+Noida,+"))
    }
    
    func testJobDetailsAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetailsAutoLogin, checkAutoLogin: true) == .jobDetails(jobId: "57879388"))
    }
    
    func testJobSearchAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobListAutoLogin, checkAutoLogin: true) == .jobList)
    }
    
    func testJobListCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobListCustom) == .jobList)
    }
    
    func testJobSearchCityCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchCityCustom) == .jobSearch(keyword: "", experience: "", location: "delhi"))
    }
    
    func testJobDetailCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetailCustom) == .jobDetails(jobId: "38803"))
    }
    
    func testJobDetail2Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetail2Custom) == .jobDetails(jobId: "38803"))
    }
    
    func testJobDetailsFromMailerCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetailMailerCustom) == .jobDetails(jobId: "37532"))
    }
    
    func testJobSearchType1Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchType1Custom) == .jobSearch(keyword: "java", experience: "", location: ""))
    }
    
    func testjobSearchType2Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobSearchType2Custom) == .jobSearch(keyword: "php", experience: "3", location: "Noida/Greater+Noida,+"))
    }
    
    func testJobDetailsAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobDetailsAutoLoginCustom, checkAutoLogin: true) == .jobDetails(jobId: "57879388"))
    }
    
    func testJobSearchAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: jobListAutoLoginCustom, checkAutoLogin: true) == .jobList)
    }
}

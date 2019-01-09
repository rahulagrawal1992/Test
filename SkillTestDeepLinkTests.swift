//
//  SkillTestDeepLinkTests.swift
//  TechGig-iOS
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig

class SkillTestDeepLinkTests: XCTestCase {
    
    let skillList = "https://www.techgig.com/skilltest"
    let skillDetails = "https://www.techgig.com/skilltest/c"
    let skillDetails2 = "https://www.techgig.com/skill/c/contests"
    let skillDetailsAutoLogin = "https://www.techgig.com/skilltest/c?auto_login=" + TechgigTests.tgToken
    let instructionsAutoLogin = "https://www.techgig.com/skill/c/contests?test_id=296&solve=1&auto_login=" + TechgigTests.tgToken
    let instructionsAutoLogin2 = "https://www.techgig.com/skill/c/contests?test_id=296&auto_login=" + TechgigTests.tgToken
    let instructionsSolveAutoLogin2 = "https://www.techgig.com/skilltest/c?solve=1&auto_login=" + TechgigTests.tgToken
    let subSkillType3 = "https://www.techgig.com/skilltest/c?solve=1"
    
    let skillListCustom = TechgigTests.customDeepLinkPath + "/skilltest"
    let skillDetailsCustom = TechgigTests.customDeepLinkPath + "/skilltest/c"
    let skillDetails2Custom = TechgigTests.customDeepLinkPath + "/skill/c/contests"
    let skillDetailsAutoLoginCustom = TechgigTests.customDeepLinkPath + "/skilltest/c?auto_login=" + TechgigTests.tgToken
    let instructionsAutoLoginCustom = TechgigTests.customDeepLinkPath + "/skill/c/contests?test_id=296&solve=1&auto_login=" + TechgigTests.tgToken
    let instructionsAutoLogin2Custom = TechgigTests.customDeepLinkPath + "/skill/c/contests?test_id=296&auto_login=" + TechgigTests.tgToken
    let instructionsSolveAutoLogin2Custom = TechgigTests.customDeepLinkPath + "/skilltest/c?solve=1&auto_login=" + TechgigTests.tgToken
    let subSkillType3Custom = TechgigTests.customDeepLinkPath + "/skilltest/c?solve=1"
    
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSkillList() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillList) == .skillTestList)
    }
    
    func testSkillDetails() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetails) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillDetails2() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetails2) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillDetailsAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetailsAutoLogin, checkAutoLogin: true) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillInstructionsAutoLogin() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsAutoLogin, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "296", solve: "1"))
    }
    
    func testSkillInstructionsAutoLogin2() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsAutoLogin2, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "296", solve: ""))
    }
    
    func testInstructionsSolveAutoLogin() {
        //XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsSolveAutoLogin2, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "", solve: "1"))
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: subSkillType3) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSubSkillType3() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: subSkillType3) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillListCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillListCustom) == .skillTestList)
    }
    
    func testSkillDetailsCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetailsCustom) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillDetails2Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetails2Custom) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillDetailsAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: skillDetailsAutoLoginCustom, checkAutoLogin: true) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSkillInstructionsAutoLoginCustom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsAutoLoginCustom, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "296", solve: "1"))
    }
    
    func testSkillInstructionsAutoLogin2Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsAutoLogin2Custom, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "296", solve: ""))
    }
    
    func testInstructionsSolveAutoLoginCustom() {
        //XCTAssertTrue(TechgigTests.setMyDeepLink(url: instructionsSolveAutoLogin2, checkAutoLogin: true) == .skillTestInstructions(parentSkillName: "c", seasonId: "", solve: "1"))
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: subSkillType3Custom) == .skillTestSubSkillList(skillName: "c"))
    }
    
    func testSubSkillType3Custom() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: subSkillType3Custom) == .skillTestSubSkillList(skillName: "c"))
    }
    
}

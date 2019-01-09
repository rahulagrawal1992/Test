//
//  ForgotPasswordDeepLinkTests.swift
//  TechGig-iOS
//
//  Created by Sahil Dudeja on 4/26/17.
//  Copyright © 2017 InnovationM. All rights reserved.
//

import XCTest
@testable import Techgig

class ForgotPasswordDeepLinkTests: XCTestCase {

    let forgotPassword = "https://www.techgig.com/change_password.php"
        + "?forgot_password_id=ffa930ed2280fc37ffc5b3832b099a3d"
        + "&email=timesgroup.sahil@gmail.com" + "&activity_name=tgforgotpwd_2016-09-21"
    
    let forgotPasswordCustom = TechgigTests.customDeepLinkPath + "/change_password.php"
        + "?forgot_password_id=ffa930ed2280fc37ffc5b3832b099a3d"
        + "&email=timesgroup.sahil@gmail.com" + "&activity_name=tgforgotpwd_2016-09-21"
    
    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testForgotPassword() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: forgotPassword)
            == .changePassword(activityName: "tgforgotpwd_2016-09-21",
                               email: "timesgroup.sahil@gmail.com",
                               forgotPasswordId: "ffa930ed2280fc37ffc5b3832b099a3d"))
    }
    
    func testCustomForgotPassword() {
        XCTAssertTrue(TechgigTests.setMyDeepLink(url: forgotPasswordCustom)
            == .changePassword(activityName: "tgforgotpwd_2016-09-21",
                               email: "timesgroup.sahil@gmail.com",
                               forgotPasswordId: "ffa930ed2280fc37ffc5b3832b099a3d"))
    }
    
}
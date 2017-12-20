//
//  GitHubAuthTests.swift
//  TronCITests
//
//  Created by Luis Manuel Ramirez Vargas on 19/12/17.
//  Copyright © 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

import XCTest
@testable import TronCI

class GitHubAuthTests: XCTestCase {
    
    func testWhenAccessTokenRequestedIsSuccess() {
        let GitHubAuthService: AuthService = GitHubAuthServiceMock()
        let sessionCode = "testCode"
        
        let tokenExpectation = XCTestExpectation(description: "Request Access Token")
        
        GitHubAuthService.requestAccessToken(sessionCode: sessionCode) { result in
            switch result {
                case .error:
                    XCTAssertNotNil(nil, "error")
                case .success(let user):
                    XCTAssertEqual("v1.1f699f1069f60xxx", user.token)
                    XCTAssertEqual("LuisMDeveloper", user.username)
            }
            XCTAssertNotNil(result, "No server response.")
            tokenExpectation.fulfill()
        }
        
        wait(for: [tokenExpectation], timeout: 5.0)
    }
    
}

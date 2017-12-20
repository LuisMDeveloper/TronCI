//
//  GitHubAuthServiceMock.swift
//  TronCI
//
//  Created by Luis Manuel Ramirez Vargas on 19/12/17.
//  Copyright © 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

import Foundation

class GitHubAuthServiceMock: AuthService {
    
    func requestAccessToken(sessionCode: String, completion: @escaping (Result<AccessTokenUser>) -> Void) {
        
        let when = DispatchTime.now() + 2 //seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            completion(.success(AccessTokenUser(token: "v1.1f699f1069f60xxx", username: "LuisMDeveloper")))
        }
    }
    
}

//
//  AuthService.swift
//  TronCI
//
//  Created by Luis Manuel Ramirez Vargas on 19/12/17.
//  Copyright © 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

import Foundation

struct AccessTokenUser {
    let token: String
    let username: String
}

protocol AuthService {
    func requestAccessToken(sessionCode: String, completion: @escaping (Result<AccessTokenUser>) -> Void)
}

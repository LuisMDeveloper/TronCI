//
//  Result.swift
//  TronCI
//
//  Created by Luis Manuel Ramirez Vargas on 20/12/17.
//  Copyright © 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

import Foundation

enum Result<T> {
    case error(Error?)
    case success(T)
}

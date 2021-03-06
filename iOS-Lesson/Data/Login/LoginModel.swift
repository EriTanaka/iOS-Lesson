//
//  LoginModel.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct LoginModel: Codable {
    
    var accessToken: String = ""
    var error: ErrorModel = ErrorModel()
    var status: Int = 0
    var userId: Int = 0
}

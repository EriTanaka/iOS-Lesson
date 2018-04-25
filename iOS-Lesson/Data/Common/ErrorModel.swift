//
//  ErrorModel.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct ErrorModel: Codable {
    var errorCode: Int = 0
    var errorTitle: String = ""
    var errorMessage: String = ""
}


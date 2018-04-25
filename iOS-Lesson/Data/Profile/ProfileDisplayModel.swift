//
//  ProfileDisplayModel.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct ProfileDisplayModel: Codable {
    
    var status: Int = 0
    var error: ErrorModel = ErrorModel()
    var aboutMe: String?
    var age: Int?
    var gender: Int?
    var hobby: String?
    var imageId: Int = 0
    var imageSize: String?
    var imageUrl: String?
    var job: Int?
    var nickname: String = ""
    var personality: Int?
    var residence: String?
    var userId: Int = 0
    var userStatus: Int = 0
    
    var email: String?
    var password: String?
    var birthday: String?
}

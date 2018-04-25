//
//  TalkListItem.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct TalkListItem: Codable {
    
    var imageId: Int = 0
    var imageSize: String?
    var imageUrl: String?
    var lastUpdateTime: String = ""
    var mediaType: Int?
    var message: String = ""
    var messageId: Int = 0
    var nickname: String = ""
    var talkId: Int = 0
    var time: String = ""
    var toUserId: Int = 0
    var userId: Int = 0
    var userStatus: Int = 0
}

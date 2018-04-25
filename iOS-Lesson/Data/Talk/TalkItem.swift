//
//  TalkItem.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct TalkItem: Codable {
    
    var imageId: Int = 0
    var imageSize: String?
    var imageUrl: String?
    var mediaId: Int?
    var mediaSize: String?
    var mediaType: Int?
    var mediaUrl: String?
    var message: String?
    var messageId: Int = 0
    var messageKind: Int = 0
    var nickname: String = ""
    var talkId: Int = 0
    var time: String = ""
    var userId: Int = 0
}

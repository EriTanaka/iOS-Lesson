//
//  ProfileFeedItem.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct ProfileFeedItem: Codable {
    
    var imageId: Int = 0
    var imageSize: String?
    var imageUrl: String?
    var nickname: String = ""
    var userId: Int = 0
}

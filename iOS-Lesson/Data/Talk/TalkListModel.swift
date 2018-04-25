//
//  TalkListModel.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct TalkListModel: Codable {
    
    var status: Int = 0
    var error: ErrorModel = ErrorModel()
    var items : [TalkListItem] = []
}

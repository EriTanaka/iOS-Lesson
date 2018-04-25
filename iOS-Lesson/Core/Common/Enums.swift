//
//  Enums.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

// APIステータス
enum APIStatusCode: Int {
    case failure = 0
    case success = 1
}

// エラーコード
enum ErrorCodeType: Int {
    case none = 0
    case internalError = 1
    case noData = 2
    case registrationFailure = 5
    case registered = 6
    case noEmail = 10
    case emailInputError = 11
    case emailFormatError = 12
    case noPassword = 13
    case passwordInputError = 14
    case accountHasBeenDeleted = 16
    case emailWrong = 17
    case passwordWrong = 18
    case loginFailure = 19
    case mediaRegistrationFailure = 26
    case noMessage = 27
    case profileUpdateFailed = 45
    case accountDeletionFailed = 54
    case messageBrowsingNotPossible = 65
    case noNickname = 69
    case nicknameCharacterError = 70
    case passwordCharacterError = 100
}

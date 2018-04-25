//
//  Validator.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import Foundation

struct Validator {
    
    enum RegEx: String {
        case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        case password = "^[a-zA-Z0-9]*$"
        case postalCode = "\\d{3}-\\d{4}|\\d{7}"
        case phoneNumber = "0\\d{1,4}-\\d{1,4}-\\d{4}|0\\d{9,10}"
    }
    
    static func evaluate(regex: RegEx, with object: Any?) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", regex.rawValue).evaluate(with: object)
    }
}

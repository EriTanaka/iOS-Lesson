//
//  UIColor+Hax.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import UIKit

/*
 Features:
 ・UIColor+Hax.swiftを使用して16進法でカラーコードを記述。
 
 How to Use:
  UIColor(hex: "E36F00")
 
 */
extension UIColor {
    
    fileprivate enum UIColorInputError: Error {
        case unableToScanHexValue, mismatchedHexStringLength
    }
    
    private convenience init(rgba_throws hex: String, alpha: CGFloat) throws {
        let hexString = hex.replacingOccurrences(of: "#", with: "")
        var hexValue:  UInt32 = 0
        
        guard Scanner(string: hexString).scanHexInt32(&hexValue) else {
            throw UIColorInputError.unableToScanHexValue
        }
        
        let divisor = CGFloat(255)
        let red     = CGFloat((hexValue & 0xFF0000) >> 16) / divisor
        let green   = CGFloat((hexValue & 0x00FF00) >>  8) / divisor
        let blue    = CGFloat( hexValue & 0x0000FF       ) / divisor
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(hex: String, alpha: Float = 1.0) {
        guard let color = try? UIColor(rgba_throws: hex, alpha: CGFloat(alpha)) else {
            self.init(cgColor: UIColor.white.cgColor)
            return
        }
        
        self.init(cgColor: color.cgColor)
    }
}

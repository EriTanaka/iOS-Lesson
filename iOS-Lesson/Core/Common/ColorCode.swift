//
//  ColorCode.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import UIKit

/*
 Features:
 ・UIColor+Hax.swiftを使用して16進法でカラーコードを記述。
 ・UIColor クラス内の色と衝突しないようにexプレフィックスを使用しています。
 
 How to Use:
   UIColor.ex.orange
 
 */
struct ColorCode<Base> {
    let base: Base
    
    init (_ base: Base) {
        self.base = base
    }
}

protocol ColorCodeCompatible {
    associatedtype ColorCodeType
    static var ex: ColorCode<ColorCodeType>.Type { get }
}

extension ColorCodeCompatible {
    static var ex: ColorCode<Self>.Type {
        return ColorCode<Self>.self
    }
}

extension UIColor: ColorCodeCompatible { }

extension ColorCode where Base: UIColor {
    
//    static var primary: UIColor {
//        return UIColor(hex: "F75B16")
//    }
//
//    static func primary(alpha: Float = 1.0) -> UIColor {
//        return UIColor(hex: "F75B16", alpha: alpha)
//    }
//
//    static func white(alpha: Float = 1.0) -> UIColor {
//        return UIColor(hex: "FFFFFF", alpha: alpha)
//    }
//
//    static var background: UIColor {
//        return UIColor(hex: "F1F1F1")
//    }
//
//    static var textColor: UIColor {
//        return UIColor(hex: "565A5C")
//    }
    
    static var orange: UIColor {
        return UIColor(hex: "E36F00")
    }
    
    static var yellow: UIColor {
        return UIColor(hex: "EDD300")
    }
    
    static var green: UIColor {
        return UIColor(hex: "5EAD16")
    }
    
    static var gray: UIColor {
        return UIColor(hex: "919191")
    }
}

//
//  UIViewController+Storyboard.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import UIKit

/*
 Features:
 ・storyboardの生成を行うラッパー
 
 How to Use:
 let viewController = CustomViewController.instantiateStoryboard()
 
 */
extension UIViewController {
    
    static func instantiateStoryboard() -> UIViewController {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        return storyboard.instantiateInitialViewController()!
    }
    
    static func instantiateStoryboard(name: String) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController()!
    }
    
    static func instantiateStoryboard(bundle: Bundle?) -> UIViewController {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: bundle)
        return storyboard.instantiateInitialViewController()!
    }
    
}


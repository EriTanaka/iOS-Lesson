//
//  Transition.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/25.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import UIKit

let animationDuration = 0.35

class Transition: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return animationDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
    }
}

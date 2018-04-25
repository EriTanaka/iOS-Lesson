//
//  UIView+Nib.swift
//  iOS-Lesson
//
//  Created by ooyama on 2018/04/23.
//  Copyright © 2018年 Terraresta Inc. All rights reserved.
//

import UIKit

/*
 Features:
 ・xibで作成されたCustomViewをviewにAddさせる
 
 How to Use:
 // CustomViewのinitのタイミングで下記を実装する
 loadNib()
 
 */
extension UIView {
    
    @discardableResult
    func loadNib<T : UIView>() -> T? {
        guard let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? T else {
            // xib not loaded, or it's top view is of the wrong type
            return nil
        }
        view.frame = bounds
        self.addSubview(view)
        return view
    }
    
    @discardableResult
    func loadNib<T : UIView>(bundle: Bundle?) -> T? {
        guard let view = bundle?.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? T else {
            return nil
        }
        view.frame = bounds
        self.addSubview(view)
        return view
    }
}

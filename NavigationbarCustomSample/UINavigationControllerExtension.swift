//
//  UINavigationControllerExtension.swift
//  NavigationbarCustomSample
//
//  Created by ashida on 2016/06/28.
//  Copyright © 2016年 v-force.co.jp. All rights reserved.
//

import UIKit

// MARK: - NavigationBarの下部に線を引くのと背景色の設定
extension UINavigationController {
    
    /**
     ナビゲーションバーの色を共通色に設定し、下線を引く
     
     - parameter animated: <#animated description#>
     */
    override public func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // ナビゲーションバーに下線を加える
        let bottomLine = CALayer()
        bottomLine.frame = CGRectMake(0, self.navigationBar.frame.size.height - 1, self.view.frame.width, 1)
        bottomLine.backgroundColor = UIColor.orangeColor().CGColor
        self.navigationBar.layer.addSublayer(bottomLine)
        // ナビゲーションバーの背景色設定
        self.navigationBar.barTintColor = UIColor(red: 255/255, green: 242/255, blue: 228/255, alpha: 1.0)
        // ナビゲーションバーの文字色設定
        self.navigationBar.tintColor = UIColor.orangeColor()
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.orangeColor()]
    }
}
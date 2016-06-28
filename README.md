# NavigationControllerCustomSwift2
ナビゲーションバーの背景色変更と文字色変更・ナビゲーションバーに独自下線を引くためのサンプル  
実装方法:UINavigationControllerのExtensionを作成し、viewWillAppearで表示設定を行っている

    // MARK: - NavigationBarの下部に線を引くのと背景色の設定
    extension UINavigationController {
    
        /**
         ナビゲーションバーの色を共通色に設定し、下線を引く
     
         - parameter animated: <#animated description#>
         */
        override public func viewWillAppear(animated: Bool) {
            super.viewWillAppear(animated)
        
            let bottomLine = CALayer()
            bottomLine.frame = CGRectMake(0, self.navigationBar.frame.size.height - 1, self.view.frame.width, 1)
            bottomLine.backgroundColor = UIColor.orangeColor().CGColor
            self.navigationBar.layer.addSublayer(bottomLine)
            // ナビゲーションバーの色設定
            self.navigationBar.barTintColor = UIColor(red: 255/255, green: 242/255, blue: 228/255, alpha: 1.0)
            self.navigationBar.tintColor = UIColor.orangeColor()
            self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.orangeColor()]
        }
      }

//
//  UIBarButtonItem-extension.swift
//  DYZB
//
//  Created by 满利利 on 2020/7/5.
//  Copyright © 2020 manlili. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    //第一种方法使用扩展类方法
    /*
    class func createItem (imageName: String, highImageName: String) -> UIBarButtonItem {
        
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(x:0, y:0 , width: 40, height: 40)
        return UIBarButtonItem(customView: btn)
    }
    */
    
    //第二种方法使用便利构造函数，必须满足2个条件:1、必须使用convenience开头，2、必须明确调用一个设计的构造函数，并且使用self
    convenience init(imageName: String, highImageName: String) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(x:0, y:0 , width: 40, height: 40)
        //注意最后必须使用self.init
        self.init(customView: btn)
    }
}

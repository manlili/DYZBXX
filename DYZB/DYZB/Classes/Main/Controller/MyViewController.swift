//
//  MyViewController.swift
//  DYZB
//
//  Created by 满利利 on 2020/6/29.
//  Copyright © 2020 manlili. All rights reserved.
//

import UIKit

class MyViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
        
        
    }
    
    private func addChildVc(storyName : String) {
        //1 通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        addChild(childVc)
    }

}

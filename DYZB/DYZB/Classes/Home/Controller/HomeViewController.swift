//
//  HomeViewController.swift
//  DYZB
//
//  Created by 满利利 on 2020/7/5.
//  Copyright © 2020 manlili. All rights reserved.
//

import UIKit

class HomeViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }


}

//保持代码干净，扩展HomeViewController，而不是在上面直接改
extension HomeViewController {
    //设置UI界面
    private func setUI() {
        setupNavigationBar()
    }
    
    private func setupNavigationBar () {
        //设置首页左边的logo，注意是可以点击的按钮
        let btn = UIButton()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
}

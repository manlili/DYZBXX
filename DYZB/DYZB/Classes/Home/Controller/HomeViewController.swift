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
        
        //设置首页右边的icon
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named: "image_my_history"), for: .normal)
        historyBtn.setImage(UIImage(named: "Image_my_history_click"), for: .highlighted)
        historyBtn.frame = CGRect(x:0, y:0 , width: 40, height: 40)
        let historyItem = UIBarButtonItem(customView: historyBtn)
        
        let serchBtn = UIButton()
        serchBtn.setImage(UIImage(named: "btn_search"), for: .normal)
        serchBtn.setImage(UIImage(named: "btn_search_clicked"), for: .highlighted)
        serchBtn.frame = CGRect(x:0, y:0 , width: 40, height: 40)
        let serchItem = UIBarButtonItem(customView: serchBtn)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage(named: "Image_scan"), for: .normal)
        qrcodeBtn.setImage(UIImage(named: "Image_scan_click"), for: .highlighted)
        qrcodeBtn.frame = CGRect(x:0, y:0 , width: 40, height: 40)
        let qrcodeitem = UIBarButtonItem(customView: qrcodeBtn)
        
        navigationItem.rightBarButtonItems = [historyItem, serchItem, qrcodeitem]
    }
}

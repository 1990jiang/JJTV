//
//  JJNavigationController.swift
//  JJTv
//
//  Created by 蒋俊 on 17/3/24.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

import UIKit

class JJNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   // MARK:- 我们把导航栏背景设置为黑色后，发现看不到状态栏，这里修改一下颜色
    /// 在swift中把很多方法都改成了一个属性，我们现在相当于重写这个属性
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
         return .lightContent
        
    }

   

}

//
//  MainViewController.swift
//  JJTv
//
//  Created by 蒋俊 on 17/3/24.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        addChildVc("Home")
        addChildVc("Rank")
        addChildVc("Discover")
        addChildVc("Profile")
    
    
    }
    

    
    fileprivate func addChildVc(_ storyName:String){
       // 1.通过storyboard获取控制器
      let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()
       
        //2.将childVc作为子控制器
        addChildViewController(childVc!)
        
    }

    
}

//
//  HomeViewController.swift
//  JJTv
//
//  Created by 蒋俊 on 17/3/24.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        
    }

    }

// MARK:- 设置UI界面
//private:表示只有在当前作用域才能调用
//fileprivate:表示在整个文件可以调用的方法
extension HomeViewController {
    
    fileprivate func setupUI(){
        
        setupNavigationBar()
        
        
    }
    
    
    private func setupNavigationBar(){
        
        // 1.左侧logoItem
        let logoImage = UIImage(named: "home-logo")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logoImage, style: .plain, target: nil, action: nil)
        
        // 2.设置右侧收藏的item

        
        
    }
    

    
    
    
}









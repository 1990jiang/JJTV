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
        
        view.backgroundColor = UIColor.randomColor()
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
        let collectImage = UIImage(named: "search_btn_follow")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: collectImage, style: .plain, target: self, action: #selector(followItemClick))
        // 事件监听 --> 发送消息 --> 将方法包装SEL  --> 类方法列表 --> IMP
        
        // 3.搜索框
        let searchFrame = CGRect(x: 0, y: 0, width: 200, height: 32)
       //初始化
        let searchBar = UISearchBar(frame: searchFrame)
        searchBar.placeholder = "主播昵称/房间号/链接"
        navigationItem.titleView = searchBar
        //设置搜索栏样式
        searchBar.searchBarStyle = .minimal
        
        //就是设置一下内置的searchBar的textField的文字颜色
        let searchFiled = searchBar.value(forKey: "_searchField") as? UITextField
        searchFiled?.textColor = UIColor.white
        
        
        
    }
    

    
    
    
}

// MARK:- 事件监听函数
extension HomeViewController {
    //最右边收藏按钮的监听方法
   //这样写是为了这个方法只在当前控制器可以调用，加个@objc是系统要求的
    @objc fileprivate func followItemClick() {
        print("------")
    }
}








//
//  UIColor-Extension.swift
//  JJTv
//
//  Created by 蒋俊 on 17/3/25.
//  Copyright © 2017年 蒋俊. All rights reserved.
//

import UIKit

extension UIColor {
    
    //一般不建议用类方法扩展，用便利构造函数
    //便利构造函数的两大特点，有convenience和调用了self.init()
   //CGFloat = 1.0,是说在外界调用我们这个构造函数的时候，就有两个了，一个是需要传透明度参数的，一个是不需要传透明度参数的。 这样写个默认值是比较方便的
    // MARK:- RGB颜色
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat,alpha:CGFloat = 1.0) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: alpha)
    }
    
    // MARK:- 十六进制颜色
    //#FF0000 ##FF0000 0xFF0000 #ff0000 这个有多种写法，我们需要转换一下
    
    /// 十六进制颜色
    ///
    /// - Parameters:
    ///   - hex: 十六进制颜色数值
    ///   - alpha: 透明度
    //这里要弄成可选的代表通过这个方法，我们可能创建出来颜色，也可能创建不出颜色，主要还是这个return nil这里要求我们有这么一个判断
    convenience init?(hex : String, alpha : CGFloat = 1.0) {
        // 0xff0000
        // 1.判断字符串的长度是否符合
        guard hex.characters.count >= 6 else {
            return nil
        }
        
        // 2.将字符串转成大写
        var tempHex = hex.uppercased()
        
        // 3.判断开头: 0x/#/##
        if tempHex.hasPrefix("0x") || tempHex.hasPrefix("##") {
           //截取从第二个字符开始
            tempHex = (tempHex as NSString).substring(from: 2)
        }
        if tempHex.hasPrefix("#") {
            tempHex = (tempHex as NSString).substring(from: 1)
        }
        
        // 4.分别取出RGB
        // FF --> 255
        //0xff0008:ff对应红色，00:绿色 ，08:蓝色
        var range = NSRange(location: 0, length: 2)
        let rHex = (tempHex as NSString).substring(with: range)
        range.location = 2
        let gHex = (tempHex as NSString).substring(with: range)
        range.location = 4
        let bHex = (tempHex as NSString).substring(with: range)
        
        // 5.将十六进制转成数字 emoji表情
        var r : UInt32 = 0, g : UInt32 = 0, b : UInt32 = 0
        Scanner(string: rHex).scanHexInt32(&r)
        Scanner(string: gHex).scanHexInt32(&g)
        Scanner(string: bHex).scanHexInt32(&b)
        
        //直接调用我们上面的构造函数
        self.init(r : CGFloat(r), g : CGFloat(g), b : CGFloat(b))
        
        
    }
    
    /// 类方法返回随机色
    ///
    /// - Returns: 返回一个随机颜色
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }

    
}


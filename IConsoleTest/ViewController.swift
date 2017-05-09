//
//  ViewController.swift
//  IConsoleTest
//
//  Created by JingshunZhang on 2017/5/9.
//  Copyright © 2017年 JingshunZhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        //所有的崩溃保存在Caches目录下
        let path = NSHomeDirectory().appending("/Library/Caches")
        print(path)
        
        let v = MyTestView()
        v.testMethod() //调用此方法，3s后抛出异常
        view.addSubview(v)
        
    }


}


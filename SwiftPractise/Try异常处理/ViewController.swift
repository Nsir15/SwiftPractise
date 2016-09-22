//
//  ViewController.swift
//  Try异常处理
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 例如需要创建一个正则表达式
        // 当我们调用一个函数的时候，看到函数最后边有一个throws，就需要我们进行异常处理,主要有下面三种方式
        // 先定义规则
        let partten = "123"
        // 创建正则表达式
        //进行异常处理判断
        // 1. 利用try方式，手动捕获异常
//        do{
//            let regex = try NSRegularExpression(pattern: partten, options: .caseInsensitive)
//        }catch{
//            print(error)
//        }
        
        // 2. try?方式，比较推荐 ,其实就跟可选类型一样，如果失败返回nil，成功的话进行解包赋值
        
        guard let regex = try? NSRegularExpression(pattern: partten, options: .caseInsensitive) else {
            return
        }
        
        // 3. try!方式。相当于强制解包，告诉系统我肯定是没异常的。不推荐使用，比较危险
//        let regex = try! NSRegularExpression(pattern: partten, options: .caseInsensitive)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


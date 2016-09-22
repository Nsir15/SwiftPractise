//
//  HttpTools.swift
//  SwiftPractise
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//

import UIKit

class HttpTools: NSObject {

    // OC 中写法 ： - (void)loadData:(void(^)(NSString * data))callBack
    func loadData(callBack : @escaping (_ dataStr:String)->())
    {
        // 获取一个全局异步线程
        DispatchQueue.global().async {
            print("开始获取数据")
            // 回到主线程刷新数据,返回
            DispatchQueue.main.async {
                print("数据已经请求道，开始返回给你了")
                callBack("通知，通知，开始返回数据")
            }
        }
    }
}

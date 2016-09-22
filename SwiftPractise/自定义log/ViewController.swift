//
//  ViewController.swift
//  自定义log
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//  



import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 获取打印语句所在的文件
        let file = (#file as NSString).lastPathComponent  //#file 这里获取到的是全路径,先转换成NSString m调用NSString 的方法获取到路径的最后一个字符串
        // 获取打印语句所在的方法
        let method = #function
        // 获取打印语句所在的行数
        let lineNum = #line  // 这里的行号获取当前调用#file这个方法的行号,所以打印的是28行
        
        print("\(file)--[\(method)]--(\(lineNum))")
        // Do any additional setup after loading the view, typically from a nib.
        
        NXLog(message: 1234)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


// 可以将上面的东西封装成方法
/// 自定义打印
// 在swift中有全局函数的概念，在任意一个类文件中只要写在类函数外部，在整个工程都可以调用
// T 是动态类型，因为message的类型不确定，<T>泛型写法
// 这里参数用了一个默认值，不用每次调用都得传那么多参数,只需要传入每次需要打印的信息就可以
/*
 swift 3.0中
 __FILE__，__LINE__，__COLUMN__，__FUNCTION__和__DSO_HANDLE__等调试标识 改为#file
 ，#line，#column，#function和#dsohandle
 
 */
func NXLog<T>(message:T ,file:String = #file , function:String = #function , lineNum:Int = #line)
{
    let fileName = (file as NSString).lastPathComponent
    print("\(fileName):(\(lineNum))--\(message)")  // 这里没加方法名，可以自己根据需要添加
}

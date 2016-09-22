//
//  ViewController.swift
//  TableView的使用
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    // 不管是swift还是OC 工程中一般都建议用懒加载
    lazy var tableView:UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.设置tableView 的frame
        tableView.frame = view.bounds
        //2.设置数据源和代理
        tableView.dataSource = self
        tableView.delegate = self
        //3.添加到控制器
        view.addSubview(tableView)
    }

    // swift 中没有#pragma mark-- ,代替的是 MARK:-
    // MARK:- tableView datasource方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "CellId"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            // swift 中枚举使用方式：1.类型.枚举值 2.直接 .枚举值
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = "我是测试数据\(indexPath.row)"
        return cell!
    }
    
    // MARK:- tableView delegate 方法
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("当前点击的是\(indexPath.row)行cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


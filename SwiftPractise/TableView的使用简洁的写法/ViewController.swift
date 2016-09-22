//
//  ViewController.swift
//  TableView的使用简洁的写法
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var tableView : UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// 扩展，相当于OC 中的category ，同样也是只能扩展类的方法，不能扩展属性
extension ViewController {
    
   
    /// 创建UI
    func setupUI(){
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}


extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    // MARK:- tableView datasource 方法
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell==nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = "我是测试数据\(indexPath.row)"
        return cell!
    }
    
    // MARK:- tableView delegate 方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("当前点击的是\(indexPath.row)行cell")
    }
}

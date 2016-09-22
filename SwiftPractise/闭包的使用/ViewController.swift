//
//  ViewController.swift
//  闭包的使用
//
//  Created by nx36950 on 16/9/22.
//  Copyright © 2016年 nx36950. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  lazy var http = HttpTools()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        http.loadData { (dataStr) in
            print("收到，收到，接收到的数据是---\(dataStr)")
            self.view.backgroundColor = UIColor.red
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


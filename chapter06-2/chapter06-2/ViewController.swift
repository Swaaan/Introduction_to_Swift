//
//  ViewController.swift
//  chapter06-2
//
//  Created by 白鳥 友里恵 on 2015/12/30.
//  Copyright (c) 2015年 swan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func button() {
        label.text = "こんにちわ"
    }
    
    var age:Int? = nil
    var age:Int? = -5
    print(age! + 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


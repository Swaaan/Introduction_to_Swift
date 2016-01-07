//
//  ViewController.swift
//  chapter06-8
//
//  Created by 白鳥 友里恵 on 2016/01/05.
//  Copyright (c) 2016年 swan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lavel: UILabel!
    @IBAction func slider(sender: UISlider) {
        lavel.text = "音量は\(sender.value)です"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


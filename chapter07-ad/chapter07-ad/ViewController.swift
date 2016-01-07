//
//  ViewController.swift
//  chapter07-ad
//
//  Created by 白鳥 友里恵 on 2016/01/05.
//  Copyright (c) 2016年 swan. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController {


    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var timed: UILabel!
    @IBAction func slider(sender: UISlider) {
        time.text = "\(sender.value)"
    }
    
    extension UISlider {
        func remaining() {
        print(self.maximumValue - self.value)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.canDisplayBannerAds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


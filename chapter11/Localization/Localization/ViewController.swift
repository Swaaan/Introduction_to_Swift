//
//  ViewController.swift
//  Localization
//
//  Created by 白鳥 友里恵 on 2016/04/16.
//  Copyright © 2016年 swan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func sayhello(sender: UIButton) {
        label.text = NSLocalizedString("Hello", comment: "")
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


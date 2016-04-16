//
//  DetailViewController.swift
//  NewsFeed
//
//  Created by 白鳥 友里恵 on 2016/04/15.
//  Copyright © 2016年 swan. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var link:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = NSURL(string: self.link) {
            let request = NSURLRequest(URL: url)
            self.webView.loadRequest(request)
        }
    }
}

//
//  ListViewController.swift
//  chapter10
//
//  Created by 白鳥 友里恵 on 2016/01/13.
//  Copyright (c) 2016年 swan. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        return cell 
    }
    

}



//
//  ViewController.swift
//  chapter09
//
//  Created by 白鳥 友里恵 on 2016/01/08.
//  Copyright (c) 2016年 swan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func launchCamera(sender: UIBarButtonItem) {
        
        
        let camera = UIImagePickerControllerSourceType.Camera
        
        if UIImagePickerController.isSourceTypeAvailable(camera) {
            
            
            let picker = UIImagePickerController()
            
            picker.sourceType = camera
            
            picker.delegate = self
            
            self.presentViewController(picker, animated: true, completion: nil)
            
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        
        let image = info[UIImagePickerControllerOriginalImage]as! UIImage
        
        self.imageView.image = image
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
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


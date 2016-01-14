//
//  TUGoldspoonViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 1. 14..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUGoldspoonViewController: UIViewController {

    var imageView: UIImageView?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.view.backgroundColor = UIColor.whiteColor()

        let slider = UISlider(frame: CGRect(x: 50, y: 200, width: 200, height: 50))
        slider.addTarget(self, action: "valueChanged:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(slider)
        
        self.imageView = UIImageView(image: UIImage(named: "goldspoon.jpg"))
        self.imageView!.frame = CGRect(x: 50, y: 300, width: 300, height: 300)
        self.imageView!.opaque = true
        self.imageView!.alpha = 0
        self.view.addSubview(self.imageView!)
    }
    
    func valueChanged(sender:UISlider) {
        NSLog("%f", sender.value)
        self.imageView!.alpha = CGFloat(sender.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
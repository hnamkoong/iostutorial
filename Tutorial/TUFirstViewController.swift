//
//  TUFirstViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 1. 14..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUFirstViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.title = "First"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let button = UIButton(frame: CGRect(x: 300, y: 70, width: 100, height: 40))
        button.setTitle("Tab Bar", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.blackColor()
        button.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }

    func buttonClicked(sender:UIButton) {
        NSLog("Button Clicked!")
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window!.rootViewController = appDelegate.tabBarController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
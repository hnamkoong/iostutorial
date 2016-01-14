//
//  TUSecondViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 1. 14..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUSecondViewController: UIViewController {
    
    var lightbulb: UIImageView?

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "Second"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let sw = UISwitch(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        sw.center = CGPoint(x: self.view.frame.size.width/2, y: 200)
        sw.addTarget(self, action: "valueChanged:", forControlEvents: UIControlEvents.ValueChanged)
        sw.setOn(false, animated: false)
        self.view.addSubview(sw)
        
        
        self.lightbulb = UIImageView(image: UIImage(named: "off.png"))
        self.lightbulb!.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.lightbulb!.center = CGPoint(x: self.view.frame.size.width/2, y: 400)
        self.view.addSubview(self.lightbulb!)
        
        let nextButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        nextButton.center = CGPoint(x: self.view.frame.size.width/2, y: 600)
        nextButton.setTitle("Next", forState: UIControlState.Normal)
        nextButton.backgroundColor = UIColor.blueColor()
        nextButton.addTarget(self, action: "nextButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(nextButton)

    }

    func valueChanged(sender:UISwitch) {
        
        if sender.on {
            NSLog("On")
            self.lightbulb!.image = UIImage(named: "on.png")
        }
        else {
            NSLog("Off")
            self.lightbulb!.image = UIImage(named: "off.png")
        }
    }
    
    func nextButtonClicked(sender:UIButton) {
        self.navigationController?.pushViewController(TUThirdViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
//
//  TUThirdViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 1. 14..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUThirdViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "Third"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        label.center = self.view.center
        label.textColor = UIColor.redColor()
        label.font = UIFont.systemFontOfSize(40)
        label.text = "Finish"
        self.view.addSubview(label)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
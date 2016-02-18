//
//  TUNetworkExampleViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 2. 2..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit
//import AFNetworking

class TUNetworkExampleViewController: UIViewController {
    
    let tableView = UITableView()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        let data = NSData(contentsOfURL: NSURL(string: "http://groov.fm/images/beta.png")!)
        let image = UIImage(data: data!)
        let imageView = UIImageView(image: image)
        imageView.center = self.view.center
        self.view.addSubview(imageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
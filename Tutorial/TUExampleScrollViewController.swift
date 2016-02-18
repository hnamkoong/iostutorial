//
//  TUExampleScrollViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 2. 2..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUExampleScrollViewController: UIViewController, UIScrollViewDelegate {
    
    let scrollView = UIScrollView()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.scrollView.frame = CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: (self.view.frame.size.height-20))
        self.scrollView.addSubview(UIImageView(image: UIImage(named: "screen.jpg")))
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 2, height: (self.view.frame.size.height-20) * 2)
//        self.scrollView.frame = CGRect(x: 0, y: 20, width: self.view.frame.size.width * 2, height: (self.view.frame.size.height-20) * 2)
        self.scrollView.delegate = self
        self.view.addSubview(self.scrollView)
        
        // serial
        let serialQueue = dispatch_queue_create("HunThread1", DISPATCH_QUEUE_SERIAL)
        
        // concurrent
        let concurrentQueue = dispatch_queue_create("HunThread2", DISPATCH_QUEUE_CONCURRENT)
        
        // concurrent
        let mainQueue = dispatch_get_main_queue()
        
        dispatch_async(concurrentQueue) { () -> Void in
            for index in 1...30 {
                print("1 - \(index)")
            }
        }
        
        dispatch_async(concurrentQueue) { () -> Void in
            for index in 1...30 {
                print("2 - \(index)")
            }
        }

        dispatch_async(concurrentQueue) { () -> Void in
            for index in 1...30 {
                print("3 - \(index)")
            }
        }
        
        print("main thread")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("(\(scrollView.contentOffset.x), \(scrollView.contentOffset.y))")
    }
}
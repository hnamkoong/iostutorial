//
//  TUStudentAViewController.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 2. 2..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation
import UIKit

class TUStudentAViewController: UIViewController, StudentInformationProtocol {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sg = TUStudentGeneral()
        sg.printInformation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func communicateStudentName() -> String {
        return "Hun Namkung"
    }
    
    func communicateStudentID() -> String {
        return "20081256"
    }
    
}
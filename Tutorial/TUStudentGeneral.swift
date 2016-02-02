//
//  TUSchoolAdmin.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 2. 2..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation

class TUStudentGeneral: NSObject {
    let location = "Daejeon"
    let schoolName = "KAIST"
    
    var studentName: String?
    var studentID: String?
    
    override init() {
        
    }
    
    func printInformation() {
        print("location : \(self.location)")
        print("schoolName : \(self.schoolName)")
        print("studentName : \(self.studentName)")
        print("studentID : \(self.studentID)")
    }
}
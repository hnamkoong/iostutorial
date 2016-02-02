//
//  TUSchoolAdmin.swift
//  Tutorial
//
//  Created by Hun Namkoong on 2016. 2. 2..
//  Copyright © 2016년 Hun Namkoong. All rights reserved.
//

import Foundation

protocol StudentInformationProtocol {
    func communicateStudentName() -> String
    func communicateStudentID() -> String
}

class TUStudentGeneral: NSObject {
    let location = "Daejeon"
    let schoolName = "KAIST"
    
    var studentName: String?
    var studentID: String?
    
    var delegate:StudentInformationProtocol?
    
    
    override init() {
        
    }
    
    func printInformation() {
        print("location : \(self.location)")
        print("schoolName : \(self.schoolName)")

        self.studentName = delegate?.communicateStudentName()
        print("studentName : \(self.studentName!)")
        
        self.studentID = delegate?.communicateStudentID()
        print("studentID : \(self.studentID!)")
    }
}
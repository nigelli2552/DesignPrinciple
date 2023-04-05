//
//  合成复用原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

/*
 合成复用原则：尽少使用继承，多使用组合
 */

import Foundation

/*
 class Teacher {
     var name: String
     init(name: String) {
         self.name = name
     }

     func teach() {
         print("\(name)开始讲课")
     }
 }

 class MathTeacher: Teacher {
     override func teach() {
         print("\(name)开始讲数学课")
     }
 }

 class EnglishTeacher: Teacher {
     override func teach() {
         print("\(name)开始讲英语课")
     }
 }
  */

class Teacher {
    var name: String
    var subject: Subject
    init(name: String, subject: String) {
        self.name = name
        self.subject = Subject(name: subject)
    }

    func teach() {
        print("\(name)开始讲\(subject.name)课")
    }
}

class Subject {
    var name: String
    init(name: String) {
        self.name = name
    }
}

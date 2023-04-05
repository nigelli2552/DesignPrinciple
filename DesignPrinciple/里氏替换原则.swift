//
//  里氏替换原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

/*
 里氏替换原则：子类可以扩展父类的功能但不能修改父类已有的功能，即重载父类的方法
 */

import Foundation

/*
 class Bird {
     var name: String
     init(name: String) {
         self.name = name
     }

     func fly() {
         print("\(name) can fly!")
     }
 }

 class Ostrich: Bird {
     override func fly() {
         print("\(name) can't fly!")
     }

     func run() {
         print("\(name) can run!")
     }
 }
  */

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Bird: Animal {
    func fly() {
        print("\(name) can fly")
    }
}

class Ostrich: Animal {
    func run() {
        print("\(name) can run")
    }
}

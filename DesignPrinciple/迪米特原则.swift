//
//  迪米特原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

/*
 迪米特原则：一个类或对象要尽可能少的依赖其他对象，通过一个中介类减少已有的依赖
 */
import Foundation

/*

 class Boss {
     var name: String
     init(name: String) {
         self.name = name
     }

     func dailyWork() {
         var workContent = Employee().reportProgress(boss: self) + "\n"
         workContent += Company().manageCompany(boss: self) + "\n"
         workContent += SocialAffairs().meeting(boss: self) + "\n"
         print(workContent)
     }
 }

 class Employee {
     func reportProgress(boss: Boss) -> String {
         return "Boss \(boss.name) manage this employee"
     }
 }

 class Company {
     func manageCompany(boss: Boss) -> String {
         return "Boss \(boss.name) manage company"
     }
 }

 class SocialAffairs {
     func meeting(boss: Boss) -> String {
         return "Boss \(boss.name) will have a meeting"
     }
 }
  */

class Boss {
    var name: String
    private var secretary: Secretary!
    init(name: String) {
        self.name = name
        secretary = Secretary(boss: self)
    }

    func dailyWork() {
        secretary.startWork()
    }
}

class Secretary {
    var boss: Boss
    init(boss: Boss) {
        self.boss = boss
    }

    func startWork() {
        var workContent = reportProgress() + "\n"
        workContent += manageCompany() + "\n"
        workContent += meeting() + "\n"
        print(workContent)
    }

    func reportProgress() -> String {
        return Employee().reportProgress(boss: boss)
    }

    func manageCompany() -> String {
        return Company().manageCompany(boss: boss)
    }

    func meeting() -> String {
        return SocialAffairs().meeting(boss: boss)
    }
}

class Employee {
    func reportProgress(boss: Boss) -> String {
        return "Boss \(boss.name) manage this employee"
    }
}

class Company {
    func manageCompany(boss: Boss) -> String {
        return "Boss \(boss.name) manage company"
    }
}

class SocialAffairs {
    func meeting(boss: Boss) -> String {
        return "Boss \(boss.name) will have a meeting"
    }
}

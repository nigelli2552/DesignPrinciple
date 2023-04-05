//
//  ViewController.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/4.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

//        let baseStyle = Style()
//        baseStyle.apply()
//
//        let lightStyle = LightStyle()
//        lightStyle.apply()

        let darkStyle = DarkStyle()
        darkStyle.apply()

        let bird = Bird(name: "鸟")
        bird.fly()

        let ostrich = Ostrich(name: "鸵鸟")
//        ostrich.fly()
        ostrich.run()

        let ui = UserInterface()
        ui.show()

        let userInterfaceClass = UserInterfaceClass()
        userInterfaceClass.show()

        let customer = Customer(name: "老李")
        customer.shopping(store: FoodStore(), count: 7)
        customer.shopping(store: AppStore(), count: 3)

        let boss = Boss(name: "老李")
        boss.dailyWork()
        
//        let tim = MathTeacher(name: "Tim")
//        tim.teach()
//
//        let kate = EnglishTeacher(name: "Kate")
//        kate.teach()
        
        let tim = Teacher(name: "Tim", subject: "数学")
        tim.teach()
        
        let kate = Teacher(name: "Kate", subject: "英语")
        kate.teach()
    }
}

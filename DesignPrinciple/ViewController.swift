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
    }
}

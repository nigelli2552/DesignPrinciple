//
//  开闭原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/4.
//

/*
 开闭原则：软件应该对扩展开放，对修改关闭
 */

import Foundation
enum Color: String {
    case black
    case white
    case red
    case blue
    case green
    case purple
}

/*
  class Style {
     var backgroundColor = Color.black
     var textColor = Color.white

     init() {}

     func apply() {
         print("应用皮肤：背景颜色(\(self.backgroundColor.rawValue)), 文字颜色(\(self.textColor.rawValue))")
     }
 }

 class LightStyle: Style {
     var buttonColor = Color.purple

     override init() {
         super.init()
         self.backgroundColor = Color.white
         self.textColor = Color.purple
     }

     override func apply() {
         print("应用皮肤：背景颜色(\(self.backgroundColor.rawValue)), 文字颜色(\(self.textColor.rawValue)), 按钮颜色(\(self.buttonColor.rawValue))")
     }
 }
  */

protocol StyleInterface {
    var backgroundColor: Color { get }
    var textColor: Color { get }
    var buttonColor: Color { get }
    func apply() -> Void
}

class BaseStyle: StyleInterface {
    var backgroundColor: Color {
        return Color.black
    }

    var textColor: Color {
        return Color.white
    }

    var buttonColor: Color {
        return Color.purple
    }

    init() {}

    func apply() {
        print("应用皮肤：背景颜色(\(backgroundColor.rawValue)), 文字颜色(\(textColor.rawValue))")
    }
}

class DarkStyle: StyleInterface {
    var backgroundColor: Color {
        return Color.black
    }

    var textColor: Color {
        return Color.blue
    }

    var buttonColor: Color {
        return Color.purple
    }

    init() {}

    func apply() {
        print("应用皮肤：背景颜色(\(backgroundColor.rawValue)), 文字颜色(\(textColor.rawValue)), 按钮颜色(\(buttonColor.rawValue))")
    }
}

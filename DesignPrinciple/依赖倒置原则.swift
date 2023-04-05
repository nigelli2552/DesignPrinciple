//
//  依赖倒置原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

import Foundation

/*
 依赖倒置原则：高层模块不依赖底层模块，而是依赖于抽象，抽象不依赖细节，细节则依赖抽象
 */

/*

 class FoodStore {
     func sell(count: Int) {
         print("商品商店售出商品数：\(count)")
     }
 }

 class Customer {
     var name: String
     init(name: String) {
         self.name = name
     }

     func shopping(store: FoodStore, count: Int) {
         print("用户\(name)购物")
         store.sell(count: count)
     }
 }
  */

protocol StoreProtocol {
    func sell(count: Int) -> String
}

class FoodStore: StoreProtocol {
    func sell(count: Int) -> String {
        return "食品商店售出商品数：\(count)"
    }
}

class AppStore: StoreProtocol {
    func sell(count: Int) -> String {
        return"应用商店售出商品数：\(count)"
    }
}

class Customer {
    var name: String
    init(name: String) {
        self.name = name
    }

    func shopping(store: StoreProtocol, count: Int) {
        print("用户\(name)购物，\(store.sell(count: count))")
    }
}

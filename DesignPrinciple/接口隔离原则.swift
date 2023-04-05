//
//  接口隔离原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

/*
 接口隔离原则：接口应拆分成更小更具体的接口，使得其不依赖其他接口
 */

import Foundation

/*

 protocol UserInterfaceProtocol {
     var bannerData: String { get }
     var listData: String { get }
     func show() -> Void
 }

 class DataLoaderClass: UserInterfaceProtocol {
     var bannerData: String {
         return "banner数据加载完成"
     }

     var listData: String {
         return "列表数据加载完成"
     }

     func show() {
         // do nothing
     }
 }

 class UserInterfaceClass: UserInterfaceProtocol {
     var bannerData: String {
         return ""
     }

     var listData: String {
         return ""
     }

     func show() {
         let dataLoaderClass = DataLoaderClass()
         print("展示用户界面：\(dataLoaderClass.bannerData), \(dataLoaderClass.listData)")
     }
 }
  */

protocol DataLoaderProtocol {
    var bannerData: String { get }
    var listData: String { get }
}

protocol UserInterfaceProtocol {
    func show() -> Void
}

class DataLoaderClass: DataLoaderProtocol {
    var bannerData: String {
        return "banner数据加载完成"
    }

    var listData: String {
        return "列表数据加载完成"
    }
}

class UserInterfaceClass: UserInterfaceProtocol {
    func show() {
        let dataLoaderClass = DataLoaderClass()
        print("展示用户界面：\(dataLoaderClass.bannerData), \(dataLoaderClass.listData)")
    }
}

//
//  单一职责原则.swift
//  DesignPrinciple
//
//  Created by nigelli on 2023/4/5.
//

/*
 单一职责原则：一个类只负责一项工作，以使得代码高内聚低耦合
 */

import Foundation

/*

 class UserInterface {
     var bannerData: String?
     var listData: String?
     func loadBannerData() {
         bannerData = "banner数据加载完成"
     }

     func loadListData() {
         listData = "列表数据加载完成"
     }

     func show() {
         loadBannerData()
         loadListData()
         print("展示用户界面：\(bannerData!)，\(listData!)")
     }
 }
  */

class DataLoader {
    var bannerData: String?
    var listData: String?
    func loadBannerData() {
        bannerData = "banner数据加载完成"
    }

    func loadListData() {
        listData = "列表数据加载完成"
    }

    func getData() -> String {
        loadBannerData()
        loadListData()
        return "\(bannerData!), \(listData!)"
    }
}

class UserInterface {
    func show() {
        print("展示用户界面：\(DataLoader().getData())")
    }
}

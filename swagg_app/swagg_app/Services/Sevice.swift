//
//  Sevice.swift
//  swagg_app
//
//  Created by Anandu on 02/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import Foundation
class dataService{
    static let instance = dataService()
    private let categories = [
        Category(title: "SHIRTS", imgName: "shirts.png"),
        Category(title: "HOODIES", imgName: "hoodies.png"),
        Category(title: "HATS", imgName: "hats.png"),
        Category(title: "DIGITAL", imgName: "digital.png")
    ]
    private let hats = [
        product(title: "Devslope Logo Graphic Beanie", price: "$18", imgName: "hat01.png"),
        product(title: "Devslope Logo Hat Black", price: "$20", imgName: "hat02.png"),
        product(title: "Devslopes Logo Hat White", price: "$22", imgName: "hat03.png"),
        product(title: "Devslopes Logo Snapback", price: "$20", imgName: "hat04.png")
    ]
    private let hoodies = [
        product(title: "Devslope Logo Hoodie Gray", price: "$18", imgName: "hoodie01.png"),
        product(title: "Devslope Logo Hoodie Red", price: "$20", imgName: "hoodie02.png"),
        product(title: "Devslopes Logo Hoodie Grey", price: "$22", imgName: "hoodie03.png"),
        product(title: "Devslopes Logo Hoodie Black", price: "$20", imgName: "hoodie04.png")
    ]
    private let shirts = [
        product(title: "Devslope Logo Shirt Black", price: "$18", imgName: "shirt01.png"),
        product(title: "Devslope Logo Shirt Light Grey", price: "$20", imgName: "shirt02.png"),
        product(title: "Devslopes Logo Shirt Red", price: "$22", imgName: "shirt03.png"),
        product(title: "Hustle Delegate Grey", price: "$18", imgName: "shirt04.png"),
        product(title: "Kickflip Studios Black", price: "$20", imgName: "shirt05.png")
    ]
    private let digitalGoods = [product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    func gethats() -> [product]{
        return hats
    }
    func getshirts() -> [product]{
        return shirts
    }
    func gethoodies() -> [product]{
        return hoodies
    }
    func getdigitalgoods() -> [product]{
        return digitalGoods
    }
    func getProducts(forcategoryTitle title:String) -> [product]{
        switch title {
        case "SHIRTS":
            return getshirts()
        case "HOODIES":
            return gethoodies()
        case "HATS":
            return gethats()
        case "DIGITAL":
            return getdigitalgoods()
        default:
            return getshirts()
        }
    }

}

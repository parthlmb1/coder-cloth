//
//  DataService.swift
//  coder cloth
//
//  Created by Parth Lamba on 23/09/18.
//  Copyright © 2018 Parth Lamba. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", bgImageName: "shirts.png"),
        Category(title: "HOODIES", bgImageName: "hoodies.png"),
        Category(title: "HATS", bgImageName: "hats.png"),
        Category(title: "DIGITAL", bgImageName: "digital.png"),
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.ng"),
        Product(title: "Devslopes Logo Hat Black", price: "$19", imageName: "hat02.ng"),
        Product(title: "Devslopes Logo Hat White", price: "$20", imageName: "hat03.ng"),
        Product(title: "Devslopes Logo Snapback", price: "$21", imageName: "hat04.ng")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Graphic Hoodie", price: "$34", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Black Hoodie", price: "$38", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo white Hoodie", price: "$42", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie", price: "$36", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Graphic T-Shirts", price: "$14", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Black T-Shirt", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo white T-Shirt", price: "$22", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo T-Shirt", price: "$24", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Tee", price: "$26", imageName: "shirt05.png")
    ]
    
    private let digitalProducts = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryWithTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalProducts
    }
}

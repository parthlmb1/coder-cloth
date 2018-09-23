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
    
    func getCategories() -> [Category] {
        return categories
    }
}

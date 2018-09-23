//
//  Category.swift
//  coder cloth
//
//  Created by Parth Lamba on 23/09/18.
//  Copyright © 2018 Parth Lamba. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var bgImageName: String

    init(title: String, bgImageName: String) {
        self.title = title
        self.bgImageName = bgImageName
    }
}

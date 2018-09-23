//
//  CategoryCell.swift
//  coder cloth
//
//  Created by Parth Lamba on 23/09/18.
//  Copyright © 2018 Parth Lamba. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryBGImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateView(category: Category) {
        categoryBGImage.image = UIImage(named: category.bgImageName)
        categoryLabel.text = category.title
    }
    
}

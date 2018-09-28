//
//  ProductCell.swift
//  coder cloth
//
//  Created by Parth Lamba on 24/09/18.
//  Copyright © 2018 Parth Lamba. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productPrice: UILabel!
 
    func updateProducts(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productDescription.text = product.title
        productPrice.text = product.price
    }
    
}

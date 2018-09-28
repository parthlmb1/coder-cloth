//
//  ProductVC.swift
//  coder cloth
//
//  Created by Parth Lamba on 25/09/18.
//  Copyright © 2018 Parth Lamba. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func  initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryWithTitle: category.title)
        
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateProducts(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
}

//
//  productsVC.swift
//  swagg_app
//
//  Created by Peter Paul on 04/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class productsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initprod(category: Category){
        products = dataService.instance.getProducts(forcategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productViewCell", for: indexPath) as? productViewCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
            
        }
        else{
            return productViewCell()
        }
    }
    
}

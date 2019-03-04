//
//  productViewCell.swift
//  swagg_app
//
//  Created by Peter Paul on 04/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class productViewCell: UICollectionViewCell {
    @IBOutlet weak var prodImg: UIImageView!
    @IBOutlet weak var prodTitle: UILabel!
    @IBOutlet weak var prodPrice: UILabel!
    
    func updateView(product: product){
        prodImg.image = UIImage(named: product.imgName)
        prodTitle.text = product.title
        prodPrice.text = product.price
    }
}

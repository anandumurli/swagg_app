//
//  categoryCell.swift
//  swagg_app
//
//  Created by Anandu on 02/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImg.image = UIImage(named: category.imgName)
        categoryTitle.text = category.title    }
}

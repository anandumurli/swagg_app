//
//  product.swift
//  swagg_app
//
//  Created by Peter Paul on 04/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import Foundation
struct product{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imgName: String
    
    init(title: String, price: String, imgName: String) {
        self.imgName = imgName
        self.price = price
        self.title = title
    }
}

//
//  Category.swift
//  swagg_app
//
//  Created by Peter Paul on 02/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import Foundation
struct Category{
    private(set) public var title: String
    private(set) public var imgName: String
    init(title: String, imgName: String) {
        self.title = title
        self.imgName = imgName
        
    }
}

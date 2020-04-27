//
//  Content.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct Content: DataModelCodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let imageName: String
    let bgColor: String?
    let tutorials: [Content]?
    
    init(id: Int, title: String, description: String, imageName: String, bgColor: String? = nil, tutorials: [Content]? = []) {
        self.id = id
        self.title = title
        self.description = description
        self.imageName = imageName
        self.bgColor = bgColor
        self.tutorials = tutorials
    }
}

//
//  Content.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct Content: DataModelCodable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var imageName: String
    var bgColor: String?
    var tutorials: [Content]?
}

//
//  CategoryViewModel.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct CategoryViewModel {
    var categories: [Content]
    
    init(with categories: [Content]) {
        self.categories = categories
    }
}

extension CategoryViewModel {
    var navTitle: String {
        return "SwiftUI Tutorials"
    }
}

//
//  MainViewModel.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct MainViewModel {
    var categories: [Category] = []
    
    init() {
        categories = [
            .essentials,
            .drawingAndAnimation,
            .appDesignAndLayout,
            .frameworkIntegration
        ]
    }
}

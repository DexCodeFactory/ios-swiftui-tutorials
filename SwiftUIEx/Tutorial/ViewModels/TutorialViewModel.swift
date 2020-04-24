//
//  TutorialViewModel.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-23.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct TutorialViewModel {
    var category: Content
    
    init(with category: Content) {
        self.category = category
    }
}

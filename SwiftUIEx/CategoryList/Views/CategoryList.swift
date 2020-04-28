//
//  CategoryList.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct CategoryList: View {
    
    let model: CategoryViewModel
    
    init(with model: CategoryViewModel) {
        self.model = model
    }
    
    var body: some View {
        NavigationView {
            List(model.categories) { category in
                CategoryListRow(category: category)
            }
            .navigationBarTitle(
                Text(model.navTitle)
                    .foregroundColor(.white)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let category = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        let model = CategoryViewModel(with: [category, category])
        return CategoryList(with: model)
    }
}

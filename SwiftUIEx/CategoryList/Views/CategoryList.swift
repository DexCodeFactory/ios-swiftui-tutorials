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
                ZStack {
                    CategoryListRow(category: category)
                    NavigationLink(destination: TutorialList(with: TutorialViewModel(with: category))) {
                        EmptyView()
                    }
                    .hidden()
                }
                .background(Color(UIColor(hexString: category.bgColor ?? "FFFFFF")))
                .cornerRadius(20)
                .shadow(radius: 3, x: 5, y: 5)
                .padding(.top, 17)
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

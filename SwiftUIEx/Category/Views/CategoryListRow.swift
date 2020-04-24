//
//  CategoryListRow.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct CategoryListRow: View {
    var category: Content
    
    var body: some View {
        HStack(spacing: 30) {
            Image(category.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 20)
                .frame(width: 95, height: 140, alignment: .leading)
                .shadow(radius: 5.0)
            
            Text(category.title)
                .textStyle(.categoryListTitle)
            
            Spacer(minLength: 5)
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        let category = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        return CategoryListRow(category: category)
    }
}

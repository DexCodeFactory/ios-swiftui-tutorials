//
//  TutorialListRow.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct TutorialListRow: View {
    
    var tutorial: Content
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(tutorial.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(tutorial.title)
                .textStyle(.tutorialListTitle)
        }
        .cornerRadius(20)
    }
}

struct SubCategoryListRow_Previews: PreviewProvider {
    static var previews: some View {
        let tutorial = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        return TutorialListRow(tutorial: tutorial)
    }
}

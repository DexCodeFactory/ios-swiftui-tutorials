//
//  TutorialList.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct TutorialList: View {
    
    let model: TutorialViewModel
    
    init(with model: TutorialViewModel) {
        self.model = model
    }
    
    var body: some View {
        List {
            VStack(spacing: 10) {
                Text(model.category.title)
                    .textStyle(.tutorialTitle)
                TutorialDescriptionRow(category: model.category)
                Spacer()
            }
            ForEach(model.category.tutorials ?? []) { tutorial in
                ZStack {
                    TutorialListRow(tutorial: tutorial)
                    NavigationLink(destination: EmptyView()) {
                        EmptyView()
                    }
                    .hidden()
                }
                .shadow(radius: 3, x: 5, y: 5)
                .padding(.bottom, 15)
            }
        }
    }
}

struct SubCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        let category = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        let model = TutorialViewModel(with: category)
        return TutorialList(with: model)
    }
}

//
//  TutorialListRow.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct TutorialListRow: View, TutorialDetailPresentable {
    
    @State var isTutorialDetailPresented = false
    
    var tutorial: Content
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(tutorial.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button(action: {
                self.isTutorialDetailPresented.toggle()
            }) {
                Text(tutorial.title)
                    .textStyle(.tutorialListTitle)
            }
            .sheet(isPresented: self.$isTutorialDetailPresented) {
                self.presentView(for: self.tutorial.id)
            }
        }
        .cornerRadius(20)
        .shadow(radius: 3, x: 5, y: 5)
        .padding(.bottom, 15)
    }
}

struct SubCategoryListRow_Previews: PreviewProvider {
    static var previews: some View {
        let tutorial = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        return TutorialListRow(tutorial: tutorial)
    }
}

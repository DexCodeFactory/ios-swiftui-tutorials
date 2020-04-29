//
//  CategoryListRowContextMenu.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-27.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct CategoryListRowContextMenu: View, TutorialDetailPresentable {
    
    @State var isTutorialPresented: Bool = false
    @State var tappedTutorialId: Int = 0
    
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
        .contextMenu {
            ForEach(category.tutorials ?? []) { tutorial in
                Button(action: {
                    self.tappedTutorialId = tutorial.id
                    self.isTutorialPresented.toggle()
                }) {
                    Text(tutorial.title.replacingOccurrences(of: "\n", with: " "))
                }
                .sheet(isPresented: self.$isTutorialPresented) {
                    if tutorial.id == self.tappedTutorialId {
                        self.presentView(for: tutorial.id)
                    }
                }
            }
        }
    }
}

protocol TutorialDetailPresentable {}
extension TutorialDetailPresentable {
    
    func presentView(for tutorialID: Int) -> AnyView {
        switch tutorialID {
        case 101:
            return AnyView(CreateAndCombining())
        case 102:
            return AnyView(BuildingListsAndNavigation())
        case 103:
            return AnyView(HandlingUserInput())
        default:
            return AnyView(EmptyView())
        }
    }
}

struct CategoryListRowContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        let category = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        return CategoryListRowContextMenu(category: category)
    }
}

//
//  TutorialDescriptionRow.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-23.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct TutorialDescriptionRow: View {
    let category: Content
    
    var body: some View {
        ZStack {
            Image(category.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
                .opacity(0.2)
                .blur(radius: 0.4)
            
            Text(category.description)
                .textStyle(.tutorialDescription)
        }
    }
}

struct TutorialDescriptionRow_Previews: PreviewProvider {
    static var previews: some View {
        let category = Content(id: 999, title: "Test Title", description: "Test DESC", imageName: "Image Name")
        return TutorialDescriptionRow(category: category)
    }
}

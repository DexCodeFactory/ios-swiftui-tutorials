//
//  ContentText.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-23.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    
    func textStyle(_ style: ContentText.Style) -> some View {
        modifier(ContentText(style))
    }
}

struct ContentText: ViewModifier {
    
    enum Style {
        case categoryListTitle
        case tutorialTitle
        case tutorialListTitle
        case tutorialDescription
    }
    
    private let style: Style
    
    init(_ style: Style) {
        self.style = style
    }
    
    func body(content: ContentText.Content) -> some View {
        containedView(content)
    }
}

extension ContentText {
    private func containedView(_ content: ContentText.Content) -> AnyView {
        switch style {
        case .categoryListTitle:
            return AnyView(
                content
                    .font(.system(size: 20, weight: .semibold))
                    .lineLimit(nil)
                    .lineSpacing(10)
            )
        case .tutorialTitle:
        return AnyView(
            content
                .foregroundColor(.black)
                .font(.system(size: 30, weight: .bold))
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: -40, leading: 0, bottom: 0, trailing: 0))
        )
        case .tutorialListTitle:
            return AnyView(
                content
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .semibold))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(10)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
            )
        case .tutorialDescription:
            return AnyView(
                content
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .lineSpacing(7)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            )
        }
    }
}

//
//  TutorialDetailPresentable.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-05-27.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

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
        case 201:
            return AnyView(DrawingAndAnimation(selectedSegment: 0))
        case 202:
            return AnyView(DrawingAndAnimation(selectedSegment: 1))
        case 301:
            return AnyView(AppDesignAndLayout(selectedSegment: 0))
        case 302:
            return AnyView(AppDesignAndLayout(selectedSegment: 1))
        case 401:
            return AnyView(FrameworkIntegration(page: 0))
        case 402:
            return AnyView(FrameworkIntegration(page: 1))
        case 403:
            return AnyView(FrameworkIntegration(page: 2))
        default:
            return AnyView(EmptyView())
        }
    }
}

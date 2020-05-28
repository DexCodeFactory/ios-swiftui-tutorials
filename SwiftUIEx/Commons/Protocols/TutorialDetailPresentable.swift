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
        default:
            return AnyView(EmptyView())
        }
    }
}

//
//  Category.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

enum Category: Int {
    case essentials
    case drawingAndAnimation
    case appDesignAndLayout
    case frameworkIntegration
}

extension Category: Identifiable {
    
    var id: Int {
        return rawValue
    }
    
    var title: String {
        switch self {
        case .essentials:
            return "SwiftUI Essentials"
        case .drawingAndAnimation:
            return "Drawing and Animation"
        case .appDesignAndLayout:
            return "App Design and Layout"
        case .frameworkIntegration:
            return "Framework Integration"
        }
    }
    
    var description: String {
        switch self {
        case .essentials:
            return "Learn how to use SwiftUI to compose rich views out of simple ones, set up data flow, and build the navigation while watching it unfold in Xcode’s preview."
        case .drawingAndAnimation:
            return "Discover how to draw shapes and paths to create a badge that you’ll animate, while also creating seamless transitions between views."
        case .appDesignAndLayout:
            return "Explore the structure and layout of more complex interfaces built with SwiftUI."
        case .frameworkIntegration:
            return "Use SwiftUI views together with the views and view controllers from platform-specific UI frameworks."
        }
    }
    
    var imageName: String {
        switch self {
        case .essentials:
            return "swift_ui_essentials"
        case .drawingAndAnimation:
            return "drawing_and_animation"
        case .appDesignAndLayout:
            return "app_design_and_layout"
        case .frameworkIntegration:
            return "framework_integration"
        }
    }
    
    var tutorials: [Tutorial] {
        switch self {
        case .essentials:
            return [
                Esscentials.creatingAndCombiningViews,
                Esscentials.buildingListAndNavigation,
                Esscentials.handlingUserInput
            ]
        case .drawingAndAnimation:
            return [
                DrawingAndAnimation.drawingPathsAndShapes,
                DrawingAndAnimation.animatingViewsAndTransitions
            ]
        case .appDesignAndLayout:
            return [
                AppDesignAndLayout.composingComplexInterfaces,
                AppDesignAndLayout.workingWithUIControls
            ]
        case .frameworkIntegration:
            return [
                FrameworkIntegration.interfacingWithUIKit,
                FrameworkIntegration.creatingWatchOSApp,
                FrameworkIntegration.creatingMacOSApp
            ]
        }
    }
}

//
//  AppDesignAndLayout.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

enum AppDesignAndLayout: Tutorial {
    case composingComplexInterfaces
    case workingWithUIControls
    
    var title: String {
        switch self {
        case .composingComplexInterfaces:
            return "Composing Complex Interfaces"
        case .workingWithUIControls:
            return "Working with UI Controls"
        }
    }
    
    var description: String {
        switch self {
        case .composingComplexInterfaces:
            return """
            The home screen for Landmarks shows a scrolling list of categories, with horizontally scrolling landmarks within each category. As you build this primary navigation, you’ll explore how composed views can adapt to different device sizes and orientations.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        case .workingWithUIControls:
            return """
            In the Landmarks app, users can create a profile to express their personality. To give users the ability to change their profile, you’ll add an edit mode and design the preferences screen.

            You’ll work with a variety of common user interface controls for data entry, and update the Landmarks model types whenever the user saves their changes.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        }
    }
    
    var imageName: String {
        switch self {
        case .composingComplexInterfaces:
            return "composing_complex_interfaces"
        case .workingWithUIControls:
            return "working_with_ui_controls"
        }
    }
}

//
//  DrawingAndAnimation.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

enum DrawingAndAnimation: Tutorial {
    case drawingPathsAndShapes
    case animatingViewsAndTransitions
    
    var title: String {
        switch self {
        case .drawingPathsAndShapes:
            return "Drawing Paths and Shapes"
        case .animatingViewsAndTransitions:
            return "Animating Views and Transitions"
        }
    }
    
    var description: String {
        switch self {
        case .drawingPathsAndShapes:
            return """
            Users receive a badge whenever they visit a landmark in their list. Of course, for a user to receive a badge, you’ll need to create one. This tutorial takes you through the process of creating a badge by combining paths and shapes, which you then overlay with another shape that represents the location.

            If you want to create multiple badges for different kinds of landmarks, try experimenting with the overlaid symbol, varying the amount of repetition, or changing the various angles and scales.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        case .animatingViewsAndTransitions:
            return """
            When using SwiftUI, you can individually animate changes to views, or to a view’s state, no matter where the effects are. SwiftUI handles all the complexity of these combined, overlapping, and interruptible animations for you.

            In this tutorial, you’ll animate a view that contains a graph for tracking the hikes a user takes while using the Landmarks app. Using the animation(_:) modifier, you’ll see just how easy it is to animate a view.

            Download the starter project and follow along with this tutorial, or open the finished project and explore the code on your own.
            """
        }
    }
    
    var imageName: String {
        switch self {
        case .drawingPathsAndShapes:
            return "drawing_paths_and_shapes"
        case .animatingViewsAndTransitions:
            return "animating_views_and_transitions"
        }
    }
}

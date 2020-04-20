//
//  Essentials.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

enum Esscentials: Tutorial {
    case creatingAndCombiningViews
    case buildingListAndNavigation
    case handlingUserInput
    
    var title: String {
        switch self {
        case .creatingAndCombiningViews:
            return "Creating and Combining Views"
        case .buildingListAndNavigation:
            return "Building Lists and Navigation"
        case .handlingUserInput:
            return "Handling User Input"
        }
    }
    
    var description: String {
        switch self {
        case .creatingAndCombiningViews:
            return """
            This tutorial guides you through building Landmarks — an iOS app for discovering and sharing the places you love. You’ll start by building the view that shows a landmark’s details.

            To lay out the views, Landmarks uses stacks to combine and layer the image and text view components. To add a map to the view, you’ll include a standard MapKit component. As you refine the view’s design, Xcode provides real-time feedback so you can see how those changes translate into code.

            Download the project files to begin building this project, and follow the steps below.
            """
        case .buildingListAndNavigation:
            return """
            With the basic landmark detail view set up, you need to provide a way for users to see the full list of landmarks, and to view the details about each location.

            You’ll create views that can show information about any landmark, and dynamically generate a scrolling list that a user can tap to see a detail view for a landmark. To fine-tune the UI, you’ll use Xcode’s canvas to render multiple previews at different device sizes.

            Download the project files to begin building this project, and follow the steps below.
            """
        case .handlingUserInput:
            return """
            In the Landmarks app, a user can flag their favorite places, and filter the list to show just their favorites. To create this feature, you’ll start by adding a switch to the list so users can focus on just their favorites, and then you’ll add a star-shaped button that a user taps to flag a landmark as a favorite.

            Download the starter project and follow along with this tutorial, or open the finished project and explore the code on your own.
            """
        }
    }
    
    var imageName: String {
        switch self {
        case .creatingAndCombiningViews:
            return "creating_and_combining_views"
        case .buildingListAndNavigation:
            return "building_lists_and_navigation"
        case .handlingUserInput:
            return "handling_user_input"
        }
    }
}

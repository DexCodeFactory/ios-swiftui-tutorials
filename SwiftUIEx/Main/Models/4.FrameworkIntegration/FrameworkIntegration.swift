//
//  FrameworkIntegration.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

enum FrameworkIntegration: Tutorial {
    case interfacingWithUIKit
    case creatingWatchOSApp
    case creatingMacOSApp
    
    var title: String {
        switch self {
        case .interfacingWithUIKit:
            return "Creating and Combining Views"
        case .creatingWatchOSApp:
            return "Creating a watchOS App"
        case .creatingMacOSApp:
            return "Creating a macOS App"
        }
    }
    
    var description: String {
        switch self {
        case .interfacingWithUIKit:
            return """
            SwiftUI works seamlessly with the existing UI frameworks on all Apple platforms. For example, you can place UIKit views and view controllers inside SwiftUI views, and vice versa.

            This tutorial shows you how to convert the featured landmark from the home screen to wrap instances of UIPageViewController and UIPageControl. You’ll use UIPageViewController to display a carousel of SwiftUI views, and use state variables and bindings to coordinate data updates throughout the user interface.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        case .creatingWatchOSApp:
            return """
            This tutorial gives you a chance to apply much of what you’ve already learned about SwiftUI, and — with little effort — migrate the Landmarks app to watchOS.

            You’ll start by adding a watchOS target to your project, before copying over the shared data and views you created for the iOS app. With all of the assets in place, you’ll customize the SwiftUI views to display the detail and list views on watchOS.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        case .creatingMacOSApp:
            return """
            After creating a version of the Landmarks app for watchOS, it’s time to set your sights on something bigger: bringing Landmarks to the Mac. You’ll build upon everything you’ve learned so far, to round out the experience of building a SwiftUI app for iOS, watchOS, and macOS.

            You’ll start by adding a macOS target to your project, and then reusing the shared data you created for the iOS app. With all of the assets in place, you’ll create SwiftUI views to display list and detail views on macOS.

            Follow the steps to build this project, or download the finished project to explore on your own.
            """
        }
    }
    
    var imageName: String {
        switch self {
        case .interfacingWithUIKit:
            return "interfacing_with_uikit"
        case .creatingWatchOSApp:
            return "creating_watchos_app"
        case .creatingMacOSApp:
            return "handling_user_input"
        }
    }
}

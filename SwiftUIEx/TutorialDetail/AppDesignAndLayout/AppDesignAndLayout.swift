//
//  AppDesignAndLayout.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-06-24.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct AppDesignAndLayout: View {
    
    var selectedSegment = 0
    
    var body: some View {
        NavigationView {
            SegmentControlWebView(
                names: ["Composing Complex Interfaces", "Working with UI Controls"],
                webUrlPath: [
                    "composing-complex-interfaces",
                    "working-with-ui-controls"
                ],
                selectedSegment: selectedSegment
            ).navigationBarTitle(Text("App Design and Layout"))
        }
    }
}

struct AppDesignAndLayout_Previews: PreviewProvider {
    static var previews: some View {
        AppDesignAndLayout()
    }
}

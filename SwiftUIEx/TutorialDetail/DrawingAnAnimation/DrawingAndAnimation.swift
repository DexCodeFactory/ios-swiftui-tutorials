//
//  DrawingAndAnimation.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-06-24.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct DrawingAndAnimation: View {
    
    var selectedSegment = 0
    
    var body: some View {
        NavigationView {
            SegmentControlWebView(
                names: ["Drawing Paths and Shapes", "Animating Views and Transitions"],
                webUrlPath: [
                    "drawing-paths-and-shapes",
                    "animating-views-and-transitions"
                ],
                selectedSegment: selectedSegment
            ).navigationBarTitle(Text("Drawing and Animation"))
        }
    }
}

struct DrawingAnAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DrawingAndAnimation()
    }
}

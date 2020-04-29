//
//  CircleImage.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-28.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

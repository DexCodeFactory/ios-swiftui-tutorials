//
//  LandmarkRow.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-29.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
//            landmark.image
//                .resizable()
//                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks: [Landmark] = Landmark.arrayFrom(JSONLoader["landmarkData"])
        return Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

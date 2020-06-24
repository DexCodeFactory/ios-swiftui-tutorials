//
//  BuildingListsAndNavigation.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-28.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

let landmarkData: [Landmark] = Landmark.from(JSONLoader["landmarkData"])

struct BuildingListsAndNavigation: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct BuildingListsAndNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BuildingListsAndNavigation()
    }
}

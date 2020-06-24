//
//  Landmark.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-28.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: DataModelCodable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var park: String
    var coordinates: Coordinates
    var imageName: String
}

extension Landmark {
//    var image: Image {
//        Image(name: imageName)
//    }
}

struct Coordinates: DataModelCodable {
    var longitude: Double
    var latitude: Double
}

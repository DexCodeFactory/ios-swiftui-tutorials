//
//  JSONLoader.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-28.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

struct JSONLoader {
    
    static subscript(fileName: String) -> Data {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            assert(false, "Unable to find \(fileName) in the bundle")
        }

        do {
            return try Data(contentsOf: url)
        } catch let exception {
            fatalError("Unable to parse contents of url \(url). Exeption: \(exception)")
        }
    }
}

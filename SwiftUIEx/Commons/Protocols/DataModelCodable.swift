//
//  DataModelCodable.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-23.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation

protocol DataModelCodable: Codable { }

extension DataModelCodable {
    
    static func from<T: Codable>(_ data: Data) -> T {
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            preconditionFailure("Invalid Decodable Object.")
        }
    }
}

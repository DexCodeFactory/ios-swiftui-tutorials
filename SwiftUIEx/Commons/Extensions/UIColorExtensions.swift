//
//  UIColorExtensions.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-23.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Convenience Initializations
extension UIColor {

    /// From six digit hexadecimal to UIColor
    ///
    /// - Parameters:
    ///   - netHex: Six digit hexadecimal. ex) #000000, #AABBCC
    ///   - alpha: Alpha value(0.0 ~ 1.0). The default is 1.0
    convenience init(netHex hex: UInt64, alpha: CGFloat = 1.0) {
        self.init(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(hex & 0x0000FF) / 255.0,
                  alpha: alpha)
    }

    /// From eight digit hexadecimal to UIColor
    ///
    /// - Parameters:
    ///   - eightDigitHex: Eight digit hexadecimal. ex) #000000FF, #AABBCCFF
    ///   - alpha: Alpha value(0.0 ~ 1.0). The default is 1.0
    convenience init(eightDigitHex hex: UInt64) {
        self.init(red: CGFloat((hex & 0xFF000000) >> 24) / 255.0,
                  green: CGFloat((hex & 0x00FF0000) >> 16) / 255.0,
                  blue: CGFloat((hex & 0x0000FF00) >> 8) / 255.0,
                  alpha: CGFloat(hex & 0x000000FF) / 255.0)
    }

    /// From hexadecimal string to UIColor
    ///
    /// - Parameters:
    ///   - hex: String type of hexadecimal "#AABBCC", "#AABBCCDD", "FFFFFF", "FFFFFF00"
    ///   - alpha: Alpha value(0.0 ~ 1.0). The default is 1.0 However, if it's 8-digit hexadecimal it'll be ignored.
    ///   - defaultColor: Default color if it's error. The alpha value will be ignored.
    convenience init(hexString hex: String, alpha: CGFloat = 1, defaultColor: UIColor = UIColor.clear) {
        let hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        guard Scanner(string: hexString).scanHexInt64(&rgb) else {
            self.init(cgColor: defaultColor.cgColor)
            print(UIColorError.failToScanHex(hexString).localizedDescription)
            return
        }

        switch hexString.count {
        case 6:
            self.init(netHex: rgb, alpha: alpha)
        case 8:
            self.init(eightDigitHex: rgb)
        default:
            print(UIColorError.invalidHex(rgb).localizedDescription)
            self.init(cgColor: defaultColor.cgColor)
        }
    }
}

// MARK: - Internals
extension UIColor {

    /// Creates an instance of UIImage with a given size
    ///
    /// - Parameter size: A size of image
    /// - Returns: An instance of UIImage
    func image(withSize size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}

// MARK: - Private UIColorError
private enum UIColorError: Error {
    case invalidHex(UInt64)
    case failToScanHex(String)
}
extension UIColorError: LocalizedError {
    fileprivate var errorDescription: String? {
        switch self {
        case .invalidHex(let hex):
            return "Invalid Hex: \(hex)"
        case .failToScanHex(let hex):
            return "Unable to scan for \(hex)"
        }
    }
}

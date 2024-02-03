//
//  ColorUtility.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import Foundation
import SwiftUI

struct ColorUtility {
    static func randomColor() -> Color {
        let randomColorUtility = Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
        
        return randomColorUtility
    }
}

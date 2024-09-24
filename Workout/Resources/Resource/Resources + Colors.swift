//
//  Resources + Colors.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

extension Resources {
    enum Colors {
        static var active = UIColor(hex: .active)
        static var inactive = UIColor(hex: .inactive)
        static var separator = UIColor(hex: .separator)
        static var navBarTitle = UIColor(hex: .navBarTitile)
        static var vcBackground = UIColor(hex: .vcBackground)
        static let customButtomBackground = UIColor(hex: .customButtonBackground)
        
        enum Hex: String {
            case active = "437BFE"
            case inactive = "929DA5"
            case separator = "E8ECEF"
            case navBarTitile = "545C77"
            case vcBackground = "F8F9F9"
            case customButtonBackground = "F0F3FF"
        }        
    }
}

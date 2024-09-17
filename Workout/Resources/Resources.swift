//
//  Resources.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

enum Resources {
    
    enum Colors {
        static var active = UIColor(hex: .active)
        static var inactive = UIColor(hex: .inactive)
        static var separator = UIColor(hex: .separator)
    }
    
    enum Images {
        enum TabBarIcons {
            static let overview = UIImage(resource: .overview)
            static let session = UIImage(resource: .session)
            static let progress = UIImage(resource: .progress)
            static let settings = UIImage(resource: .settings)
        }
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
}

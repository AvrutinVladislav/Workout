//
//  Resources + Fonts.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

extension Resources {
    enum Fonts {
        static func helveticaRegular(size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

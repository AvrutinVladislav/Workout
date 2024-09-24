//
//  NavBarController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

private extension NavBarController {
    func configure() {
        navigationBar.isTranslucent = false
        view.backgroundColor = .white
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.navBarTitle,
                                                                .font: Resources.Fonts.helveticaRegular(size: 17)]
        navigationBar.addBottomBorder(color: Resources.Colors.separator, height: 1)
        
    }
}

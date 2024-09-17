//
//  TabBarController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = UIColor(hex: .active)
        tabBar.unselectedItemTintColor = UIColor(hex: .inactive)
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = UIColor(hex: .separator).cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigationController = UINavigationController(rootViewController: overviewController)
        let sessionNavigationController = UINavigationController(rootViewController: sessionController)
        let progressNavigationController = UINavigationController(rootViewController: progressController)
        let settingsNavigationController = UINavigationController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBarIcons.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.TabBarIcons.session,
                                                     tag: Tabs.session.rawValue)
        progressController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBarIcons.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBarIcons.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigationController,
                            sessionNavigationController,
                            progressNavigationController,
                            settingsNavigationController],
                           animated: false)
    }
}

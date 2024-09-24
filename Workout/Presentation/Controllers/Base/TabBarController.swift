//
//  TabBarController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

enum Tabs: Int, CaseIterable {
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
        
        let controllers: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.navigationController?.title = Resources.Strings.NavBar.navTitle(for: tab)
            controller.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.title(for: tab),
                                                 image: Resources.Images.TabBarIcons.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        setViewControllers(controllers, animated: false)
    }
    
    private func getController(for tab: Tabs) -> BaseViewController {
        switch tab {
        case .overview:
            return OverviewViewController()
        case .session:
            let vc = SessionViewController()
            vc.title = Resources.Strings.NavBar.navTitle(for: tab)
            return vc
        case .progress:
            let vc = ProgressViewController()
            vc.title = Resources.Strings.NavBar.navTitle(for: tab)
            return vc
        case .settings:
            let vc = SettingsViewController()
            vc.title = Resources.Strings.NavBar.navTitle(for: tab)
            return vc
        }
    }
}

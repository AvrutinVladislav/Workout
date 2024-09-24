//
//  ProgressViewController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 18.09.2024.
//

import UIKit

class ProgressViewController: BaseViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}

extension ProgressViewController {
    override func addSubview() {
        super.addSubview()
    }
    
    override func addConstraints() {
        super.addConstraints()
    }
    
    override func setupUI() {
        super.setupUI()
        
//        navigationController?.title = Resources.Strings.NavBar.navTitle(for: .progress)
//        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
    }
}

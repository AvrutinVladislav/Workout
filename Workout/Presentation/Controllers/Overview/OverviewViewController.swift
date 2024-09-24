//
//  ViewController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

final class OverviewViewController: BaseViewController {
    
    private let navBar = OverviewNavBar()

}

extension OverviewViewController {
    
    override func addSubview() {
        super.addSubview()
        
        view.addView(navBar)
    }
    
    override func addConstraints() {
        super.addConstraints()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),          
        ])
    }
    
    override func setupUI() {
        super.setupUI()

        navigationController?.navigationBar.isHidden = true
    }
}

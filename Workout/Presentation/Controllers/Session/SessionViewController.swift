//
//  SessionViewController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 18.09.2024.
//

import UIKit

final class SessionViewController: BaseViewController {
    let timerView = BaseInfoView(with: "test", buttonTitile: "7 days")
    let workoutStates = BaseInfoView(with: "workout states")
}

extension SessionViewController {
    override func addSubview() {
        super.addSubview()
        view.addView(timerView)
    }
    
    override func addConstraints() {
        super.addConstraints()
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 370)
        ])
    }
    
    override func setupUI() {
        super.setupUI()
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
        
        timerView.addButtonAction(target: self, action: #selector(sevenDaysButtonDidTap))
    }
    
    @objc func sevenDaysButtonDidTap() {
        print("7 days button did tapped")
    }
}

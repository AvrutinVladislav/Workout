//
//  OverviewNavBar.swift
//  Workout
//
//  Created by Vladislav Avrutin on 19.09.2024.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let allWorkoutButton = WAButton(with: .secondary)
    private let addWorkoutButton = UIButton()
    private let dayLabel = UILabel()
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(color: Resources.Colors.separator, height: 1)
    }
    
    func addAllWorkoutButtonAction(_ action: Selector, with target: Any?) {
        allWorkoutButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdittingAction(_ action: Selector, with target: Any?) {
        addWorkoutButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func addSubview() {
        super.addSubview()
        addView(allWorkoutButton)
        addView(addWorkoutButton)
        addView(dayLabel)
        addView(weekView)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        NSLayoutConstraint.activate([
            addWorkoutButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            addWorkoutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 28),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            allWorkoutButton.trailingAnchor.constraint(equalTo: addWorkoutButton.leadingAnchor, constant: -15),
            allWorkoutButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutButton.widthAnchor.constraint(equalToConstant: 130),
            
            dayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            dayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            dayLabel.heightAnchor.constraint(equalToConstant: 28),
            
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 18)
        ])
    }
    
    override func setupUI() {
        super.setupUI()
        backgroundColor = .white
        
        allWorkoutButton.setTitle(title: Resources.Strings.Overview.allWorkoutsButton)
        
        addWorkoutButton.setImage(Resources.Images.Common.addWorkoutButton, for: .normal)
        addWorkoutButton.backgroundColor = Resources.Colors.active
        addWorkoutButton.layer.cornerRadius = 14
        addWorkoutButton.tintColor = .white
        
        dayLabel.text = "Today"
        dayLabel.font = Resources.Fonts.helveticaRegular(size: 22)
        dayLabel.textColor = Resources.Colors.navBarTitle
        
    }
}

extension OverviewNavBar {
    @objc func allWorkoutsButtonAction() {
        print("All workouts button tapped")
    }
}

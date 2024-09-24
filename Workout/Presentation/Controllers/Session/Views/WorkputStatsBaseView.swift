//
//  WorkputStatsBaseView.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

final class WorkputStatsBaseView: BaseView {
    
    private let icon = UIImageView()
    private let resultTitle = UILabel()
    private let titleLabel = UILabel()
    
    init(with workoutStates: Resources.Session.WorkoutStats, result: String) {
        icon.image = Resources.Images.WorkoutStatsIcons.icon(for: workoutStates)
        resultTitle.text = result
        titleLabel.text = Resources.Strings.Session.title(for: workoutStates)
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension WorkputStatsBaseView {
    override func addSubview() {
        super.addSubview()
        addView(icon)
        addView(resultTitle)
        addView(titleLabel)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: leadingAnchor),
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            resultTitle.topAnchor.constraint(equalTo: topAnchor),
            resultTitle.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: resultTitle.bottomAnchor, constant: 3),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func setupUI() {
        super.setupUI()
        
        icon.tintColor = Resources.Colors.inactive
        
        resultTitle.font = Resources.Fonts.helveticaRegular(size: 17)
        resultTitle.textColor = Resources.Colors.navBarTitle
        
        titleLabel.font = Resources.Fonts.helveticaRegular(size: 10)
        titleLabel.textColor = Resources.Colors.inactive
    }
}

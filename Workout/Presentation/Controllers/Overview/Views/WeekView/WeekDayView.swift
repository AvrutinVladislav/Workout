//
//  WeekDayView.swift
//  Workout
//
//  Created by Vladislav Avrutin on 20.09.2024.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        
        private let weekdayLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(by: index)
            let day = Calendar.current.component(.day, from: currentDay)
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.vcBackground
            
            weekdayLabel.text = name.uppercased()
            weekdayLabel.textColor = isToday ? .white : Resources.Colors.inactive
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : Resources.Colors.inactive
        }
    }
}

extension WeekView.WeekDayView {
    override func addSubview() {
        super.addSubview()
        
        addView(stackView)
        stackView.addArrangedSubview(weekdayLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    override func setupUI() {
        super.setupUI()
        
        layer.cornerRadius = 10

        stackView.axis = .vertical
        stackView.spacing = 3
        
        weekdayLabel.font = Resources.Fonts.helveticaRegular(size: 10)
        weekdayLabel.textColor = Resources.Colors.inactive
        weekdayLabel.textAlignment = .center
        
        dateLabel.font = Resources.Fonts.helveticaRegular(size: 17)
        dateLabel.textColor = Resources.Colors.inactive
        dateLabel.textAlignment = .center
    }
}

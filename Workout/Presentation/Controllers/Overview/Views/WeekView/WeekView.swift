//
//  WeekView.swift
//  Workout
//
//  Created by Vladislav Avrutin on 20.09.2024.
//

import UIKit

final class WeekView: BaseView {
    
    private let stackView = UIStackView()
    private let calendar = Calendar.current
}

extension WeekView {
    override func addSubview() {
        super.addSubview()
        
        addView(stackView)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
    
    override func setupUI() {
        super.setupUI()

        stackView.axis = .horizontal
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        if calendar.firstWeekday == 2 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        weekdays.enumerated().forEach { index, day in
            let view = WeekDayView()
            view.configure(with: index, and: day)
            stackView.addArrangedSubview(view)
        }
    }
}

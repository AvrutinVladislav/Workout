//
//  WAButton.swift
//  Workout
//
//  Created by Vladislav Avrutin on 19.09.2024.
//

import UIKit

enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    private let label = UILabel()
    private let iconView = UIImageView()
    private var type: WAButtonType = .primary
    
    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type
        addView()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addView()
        layoutViews()
        configure()
    }
    
    func setTitle(title: String) {
        label.text = title
    }
}

private extension WAButton {
    func addView() {
        addView(label)
        addView(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10)
        ])
    }
    
    func configure() {
        backgroundColor = type == .secondary ? Resources.Colors.customButtomBackground
                                             : Resources.Colors.vcBackground
        layer.cornerRadius = 15
        makeSystemButtonAnimation(self)
        
        label.textColor = type == .secondary ? Resources.Colors.active
                                             : Resources.Colors.inactive
        label.font = Resources.Fonts.helveticaRegular(size: 15)
        label.textAlignment = .center
        
        iconView.image = Resources.Images.Common.allWorkoutsButton
        iconView.tintColor = type == .secondary ? Resources.Colors.active
                                                : Resources.Colors.inactive
    }
}

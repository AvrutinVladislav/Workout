//
//  BaseInfoView.swift
//  Workout
//
//  Created by Vladislav Avrutin on 23.09.2024.
//

import UIKit

final class BaseInfoView: BaseView {
    
    private let titleLabel = UILabel()    
    private let content = UIView()
    private let button = WAButton(with: .primary)
    
    init(with title: String? = nil, buttonTitile: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitile == nil ? .center : .left
        button.setTitle(title: buttonTitile?.uppercased() ?? "")
        button.isHidden = buttonTitile == nil ? true : false
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addButtonAction(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }
    
}

extension BaseInfoView {
    override func addSubview() {
        super.addSubview()
        addView(titleLabel)
        addView(content)
        addView(button)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: button.leadingAnchor),
            
            button.topAnchor.constraint(equalTo: topAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            
            content.topAnchor.constraint(equalTo: contentTopAnchor, constant: 12),
            content.leadingAnchor.constraint(equalTo: leadingAnchor),
            content.bottomAnchor.constraint(equalTo: bottomAnchor),
            content.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    override func setupUI() {
        super.setupUI()
        backgroundColor = .clear
        
        titleLabel.font = Resources.Fonts.helveticaRegular(size: 13)
        titleLabel.textColor = Resources.Colors.inactive
        
        content.backgroundColor = .white
        content.layer.cornerRadius = 5
        content.layer.borderColor = Resources.Colors.separator.cgColor
        content.layer.borderWidth = 1
    }
}

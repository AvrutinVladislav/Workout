//
//  BaseView.swift
//  Workout
//
//  Created by Vladislav Avrutin on 19.09.2024.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setupConstraints()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    
    func addSubview() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupUI() {
        
    }
}

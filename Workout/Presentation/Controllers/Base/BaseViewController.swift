//
//  BaseViewController.swift
//  Workout
//
//  Created by Vladislav Avrutin on 17.09.2024.
//

import UIKit

enum ButtonPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        addConstraints()
        setupUI()
    }
}

@objc extension BaseViewController {
    func addSubview() {
        
    }
    
    func addConstraints() {
        
    }
    
    func setupUI() {
        view.backgroundColor = Resources.Colors.vcBackground
    }
    
    func navBarLeftButtonHandler() {
        print("Left button tapped")
    }
    
    func navBarRightButtonHandler() {
        print("Right button tapped")
    }
}
extension BaseViewController {
    func addNavBarButton(at position: ButtonPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(size: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}

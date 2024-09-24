//
//  UIView + ext.swift
//  Workout
//
//  Created by Vladislav Avrutin on 18.09.2024.
//

import UIKit

extension UIView {
    func addBottomBorder(color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        separator.backgroundColor = color
        addSubview(separator)
    }
    
    func makeSystemButtonAnimation(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchUpInside,
            .touchDragOutside,
            .touchDragExit,
            .touchCancel,
            .touchUpOutside
        ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1.0
        }
    }
    
    func addView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

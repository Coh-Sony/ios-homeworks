//
//  UIViewController+Extensions.swift
//  Navigation
//
//  Created by august moore on 21/01/2025.
//

import UIKit

extension UIViewController {
    func createButton(title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}

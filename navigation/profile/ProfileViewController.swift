//
//  ProfileViewController.swift
//  navigation
//
//  Created by august moore on 26/01/2025.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let headerView: ProfileHeaderView = {
           let view = ProfileHeaderView()
           view.translatesAutoresizingMaskIntoConstraints = false 
           return view
       }()
    
    private let bottomButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Bottom Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        view.addSubview(headerView)
        view.addSubview(bottomButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // HeaderView
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220),
            
            // Кнопка снизу
            bottomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            bottomButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bottomButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

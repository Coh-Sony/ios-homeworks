//
//  InfoViewController.swift
//  Navigation
//
//  Created by august moore on 21/01/2025.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue

        let alertButton = createButton(title: "Show Alert", action: #selector(showAlert))
        view.addSubview(alertButton)

        NSLayoutConstraint.activate([
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc private func showAlert() {
        let alert = UIAlertController(title: "Info Alert", message: "This is a sample alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in print("OK pressed") })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in print("Cancel pressed") })
        present(alert, animated: true)
    }
}

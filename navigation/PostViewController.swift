//
//  PostViewController.swift
//  Navigation
//
//  Created by august moore on 21/01/2025.
//

import UIKit

class PostViewController: UIViewController {
    private let post: Post

    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = post.title

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(showInfo))
    }

    @objc private func showInfo() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true)
    }
}

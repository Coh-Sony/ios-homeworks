//
//  ProfileViewController.swift
//  navigation
//
//  Created by august moore on 26/01/2025.
//

import UIKit

class ProfileViewController: UIViewController {

    private let tableView = UITableView()
    
    private let posts: [Post] = [
        Post(author: "John Doe", description: "зайка", image: "fig", likes: 240, views: 893),
        Post(author: "Jane Doe", description: "Рин", image: "fig2", likes: 112, views: 456),
        Post(author: "Judy Doe", description: "Маленькая", image: "fig3", likes: 320, views: 1023),
        Post(author: "James Doe", description: "Lucky star", image: "fig5", likes: 150, views: 678)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostCell")
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "PhotosCell")
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 0
        case 1:
            return 1
        case 2:
            return posts.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as? PostTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: posts[indexPath.row])
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PhotosCell", for: indexPath) as! PhotosTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return 150
        } else if indexPath.section == 2 {
            return UITableView.automaticDimension
        }
        return 0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 200))
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let photosVC = PhotosViewController()
            navigationController?.pushViewController(photosVC, animated: true)
        }
    }
}

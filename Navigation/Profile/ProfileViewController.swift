//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Валерия Новикова on 24.12.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: String(describing: ProfileTableViewCell.self))
//        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: String(describing: ProfileHeaderView.self))
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    
    func setupViews() {
        view.addSubview(tableView)
        
        let constraints = [
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

}

extension ProfileViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            return 250
        } else {
            return .zero
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .zero
    }
    
}

extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return Storage.tableModel.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ProfileTableViewCell = tableView.dequeueReusableCell(
                withIdentifier: String(describing: ProfileTableViewCell.self),
                for: indexPath) as! ProfileTableViewCell
            
        cell.post = Storage.tableModel[indexPath.section]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let header = ProfileHeaderView()
            return header
        } else {
            return nil
        }
        
    }


}

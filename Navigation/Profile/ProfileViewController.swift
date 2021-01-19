//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Валерия Новикова on 24.12.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    
    lazy private var newButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .white
        button.setTitle("Hei! It's me! New button!", for: .normal)
        return button
    }()
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(newButton)
        
        newButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            newButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            newButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

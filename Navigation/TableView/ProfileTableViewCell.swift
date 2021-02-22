//
//  ProfileTableViewCell.swift
//  Navigation
//
//  Created by Валерия Новикова on 22.02.2021.
//  Copyright © 2021 Валерия Новикова. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    var post: PostSection? {
        didSet {
            postImageView.image = post?.image
            titleLabel.text = post?.autor
            descriptionLabel.text = post?.description
            likesLabel.text = "Likes: \(post!.likes)"
            viewsLabel.text = "Views: \(post!.views)"
        }
    }
    
    private let titleLabel: UILabel = {
            let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            label.textColor = .black
            label.translatesAutoresizingMaskIntoConstraints = false
            label.numberOfLines = 2
            return label
        }()
        
        private let descriptionLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 14)
            label.textColor = .systemGray
            label.numberOfLines = 0
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        private let likesLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 16)
            label.textColor = .black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
    private let viewsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
        private let postImageView: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFit            
            iv.backgroundColor = .black
            iv.translatesAutoresizingMaskIntoConstraints = false
            return iv
        }()

        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            setupViews()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func setupViews() {
            contentView.addSubviews(titleLabel,
                                    postImageView,
                                    descriptionLabel,
                                    likesLabel,
                                    viewsLabel)
            
            let constraints = [
                titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                
                postImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
                postImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                postImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                postImageView.heightAnchor.constraint(equalTo: contentView.widthAnchor),
                postImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),

                descriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
                descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
                descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),

                likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
                likesLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),

                viewsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
                viewsLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor)
                
                
            ]
            
            NSLayoutConstraint.activate(constraints)
        }
    }

    extension UIView {
        func addSubviews(_ subviews: UIView...) {
            subviews.forEach { addSubview($0) }
        }
    }


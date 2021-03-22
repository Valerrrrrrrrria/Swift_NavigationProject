//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Валерия Новикова on 16.03.2021.
//  Copyright © 2021 Валерия Новикова. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Photos"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imagesStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        stack.alignment = .fill
        stack.spacing = 5
        stack.backgroundColor = .cyan
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.addSubview(title)
        
        let ivOne = UIImageView(image: #imageLiteral(resourceName: "image5"))
        let ivTwo = UIImageView(image: #imageLiteral(resourceName: "image2"))
        let ivThree = UIImageView(image: #imageLiteral(resourceName: "image1"))
        let ivFour = UIImageView(image: #imageLiteral(resourceName: "image11"))
        
        ivOne.contentMode = .scaleAspectFill
        ivTwo.contentMode = .scaleAspectFill
        ivThree.contentMode = .scaleAspectFill
        ivFour.contentMode = .scaleAspectFill
        
        imagesStack.addArrangedSubview(ivOne)
        imagesStack.addArrangedSubview(ivTwo)
        imagesStack.addArrangedSubview(ivThree)
        imagesStack.addArrangedSubview(ivFour)
        
        self.addSubview(imagesStack)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        
        let constraints = [
            title.topAnchor.constraint(equalTo: contentView.topAnchor),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 12),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            imagesStack.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 12),
            imagesStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 12),
            imagesStack.heightAnchor.constraint(equalToConstant: 100),
            imagesStack.widthAnchor.constraint(equalToConstant: contentView.frame.width),
            imagesStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imagesStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

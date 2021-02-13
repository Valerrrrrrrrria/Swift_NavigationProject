//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Валерия Новикова on 24.12.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    private var statusText : String = "Waiting for something..."
    @IBOutlet weak var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.roundCornersWithRadius(75)
            avatarImageView.layer.borderColor = UIColor.white.cgColor
            avatarImageView.layer.borderWidth = 3
            avatarImageView.clipsToBounds = true
        }
    }
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusTextField: UITextField! {
        didSet {
            statusTextField.layer.borderWidth = 1
            statusTextField.roundCornersWithRadius(12)
            statusTextField.clipsToBounds = true
        }
    }
    @IBOutlet weak var setStatusButton: UIButton! {
        didSet {
            setStatusButton.roundCornersWithRadius(15)
        }
    }
    
    @IBAction func statusIsChanged(_ sender: Any) {
        statusText = statusTextField.text!
    }
    
    @IBAction func statusButtonIsTapped(_ sender: Any) {
        statusText = statusTextField.text!
        print(statusText)
        
        statusLabel.text = statusText
        statusTextField.text = ""
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //backgroundColor = .lightGray
    }
    
    override func layoutSubviews() {
        
    }
    
    
    func addAvatarImageView() {
           avatarImageView.image = UIImage(named: "cat")
            avatarImageView.roundCornersWithRadius(75)
            avatarImageView.layer.borderColor = UIColor.white.cgColor
            avatarImageView.layer.borderWidth = 3
            avatarImageView.clipsToBounds = true
            avatarImageView.frame = CGRect(
                x: 16,
                y: 16,
                width: 150,
                height: 150
            )
        self.addSubview(avatarImageView)
    }
    
    func addFullName() {
            fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            fullNameLabel.textColor = .black
            fullNameLabel.text = "Hipster Cat"
            fullNameLabel.frame = CGRect(
                x: avatarImageView.frame.maxX + 16,
                y: avatarImageView.frame.minY,
                width: 100,
                height: 44
            )
        self.addSubview(fullNameLabel)
    }
    
    func addStatusLabel() {
               statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
               statusLabel.textColor = .gray
               statusLabel.text = statusText
               statusLabel.frame = CGRect(
                   x: avatarImageView.frame.maxX + 16,
                   y: setStatusButton.frame.minY - 44 - 34,
                   width: 200,
                   height: 44
               )
        self.addSubview(statusLabel)
    }
    
    func addButton() {
        setStatusButton.backgroundColor = .blue
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.frame = CGRect(
            x: 16,
            y: avatarImageView.frame.maxY + 16,
            width: frame.maxX - 32,
            height: 50
        )
        setStatusButton.roundCornersWithRadius(15)
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(setStatusButton)
    }
    
    @objc func buttonPressed() {
        statusLabel.text = statusText
        statusTextField.text = ""
    }
    
    func addStatusTextField() {
        statusTextField.backgroundColor = .white
        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.roundCornersWithRadius(12)
        statusTextField.frame = CGRect(
            x: statusLabel.frame.minX,
            y: setStatusButton.frame.minY - 44,
            width: setStatusButton.frame.maxX - statusLabel.frame.minX,
            height: 30
        )
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        self.addSubview(statusTextField)
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text!
    }
}
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

extension UIView {
    
    /// Method adds shadow and corner radius for top of view by default.
    ///
    /// - Parameters:
    ///   - top: Top corners
    ///   - bottom: Bottom corners
    ///   - radius: Corner radius
    func roundCornersWithRadius(_ radius: CGFloat, top: Bool? = true, bottom: Bool? = true, shadowEnabled: Bool = true) {
        var maskedCorners = CACornerMask()
        
        if shadowEnabled {
            clipsToBounds = true
            layer.masksToBounds = false
            layer.shadowOpacity = 0.7
            layer.shadowColor = UIColor(white: 0.0, alpha: 1.0).cgColor
            layer.shadowRadius = 4
            layer.shadowOffset = CGSize(width: 4, height: 4)
        }
        
        switch (top, bottom) {
        case (true, false):
            maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        case (false, true):
            maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        case (true, true):
            maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        default:
            break
        }
        
        layer.cornerRadius = radius
        layer.maskedCorners = maskedCorners
    }
    
}

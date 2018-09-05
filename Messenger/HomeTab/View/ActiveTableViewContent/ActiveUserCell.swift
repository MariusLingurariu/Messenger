//
//  ActiveUserCell.swift
//  Messenger
//
//  Created by Marius on 03/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ActiveUserCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var isOnlineView: UIView!
    @IBOutlet weak var lastOnlineLbl: UILabel!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var waveButton: UIButton!
    
    // MARK: - Public Properties
    func configureCell() {
        setRadius()
    }
    
    // MARK: - Private Properties
    private func setRadius() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2
            self.profileImage.clipsToBounds = true
            self.profileImage.layer.borderWidth = 3
            self.profileImage.layer.borderColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1).cgColor
            self.isOnlineView.layer.cornerRadius = self.isOnlineView.frame.size.height / 2
            self.isOnlineView.clipsToBounds = true
            self.isOnlineView.layer.borderWidth = 2
            self.isOnlineView.layer.borderColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1).cgColor
        }
    }
    
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
}

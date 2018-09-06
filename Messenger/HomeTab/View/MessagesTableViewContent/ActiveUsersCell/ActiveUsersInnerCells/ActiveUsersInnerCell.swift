//
//  ActiveUsersInnerCell.swift
//  Messenger
//
//  Created by Marius on 31/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ActiveUsersInnerCell: UICollectionViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var profileImage = UIImageView()
    @IBOutlet weak var activeView: UIView!
    @IBOutlet weak var userName: UILabel!
    
    // MARK: - Public Properties
    func configureCell(){
        profileImage?.backgroundColor = UIColor.blue
        setActive(isActive: true)
        userName.text = "Paulica"
        
        
    }
    
    func configureCell(activeUser: MessageModel){
        profileImage?.image = activeUser.profileImage
        setActive(isActive: true)
        userName.text = activeUser.userName
        setRadius()
    }
    
    
    // MARK: - Private Properties
    private func setRadius() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
            self.profileImage?.layer.cornerRadius = (self.profileImage?.frame.size.width)! / 2
            self.profileImage?.clipsToBounds = true
            self.activeView.layer.cornerRadius = self.activeView.frame.size.width / 2
            self.activeView.clipsToBounds = true
        }
        
    }
    
    private func setActive(isActive: Bool) {
        if isActive {
            self.activeView.backgroundColor = UIColor.green
        } else {
            self.activeView.backgroundColor = UIColor.lightGray
        }
    }
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods

}

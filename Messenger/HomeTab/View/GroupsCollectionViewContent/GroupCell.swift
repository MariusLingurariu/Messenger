//
//  GroupCell.swift
//  Messenger
//
//  Created by Marius on 03/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class GroupCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var groupMembersIcon: UIView!
    @IBOutlet weak var memberImage1: UIImageView!
    @IBOutlet weak var memberImage2: UIImageView!
    @IBOutlet weak var memberImage3: UIImageView!
    @IBOutlet weak var isActiveView: UIView!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var lastActiveTimeLbl: UILabel!
    @IBOutlet weak var listOfMemberLbl: UILabel!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func configureCell() {
        setRadius()
        setActive(isActive: true)
    }
    
    func configureCell(group: GroupModel) {
        memberImage1.image = group.userList[1].profileImage
        memberImage2.image = group.userList[2].profileImage
        memberImage3.image = group.userList[3].profileImage
        groupName.text = group.groupName
        lastActiveTimeLbl.text = "Last activity: \(group.lastActive)"
        setActive(isActive: group.isActive)
        setRadius()
    }
    
    // MARK: - Private Methods
    private func setRadius() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
            self.groupMembersIcon.layer.cornerRadius = self.groupMembersIcon.frame.size.width / 2
            self.groupMembersIcon.clipsToBounds = true
            self.groupMembersIcon.layer.borderWidth = 3
            self.groupMembersIcon.layer.borderColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1).cgColor
            self.isActiveView.layer.cornerRadius = self.isActiveView.frame.size.width / 2
            self.isActiveView.clipsToBounds = true
            self.isActiveView.layer.borderWidth = 3
            self.isActiveView.layer.borderColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1).cgColor
        }
    }
    
    private func setActive(isActive: Bool) {
        if isActive {
            self.isActiveView.backgroundColor = UIColor.green
        } else {
            self.isActiveView.backgroundColor = UIColor.lightGray
        }
    }
}

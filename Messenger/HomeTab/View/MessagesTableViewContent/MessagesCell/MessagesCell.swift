//
//  MessagesCell.swift
//  Messenger
//
//  Created by Marius on 30/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class MessagesCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var profileImg = UIImageView()
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var lastSenderLbl: UILabel!
    @IBOutlet weak var lastMessageTimeLbl: UILabel!
    
    // MARK: - Public Properties
    func configureCell() {
        profileImg?.backgroundColor = UIColor.brown
        userNameLbl.text = "fgsdf"
        lastSenderLbl.text = "sfdgdsfg"
        lastMessageTimeLbl.text = "25:62"
        roundProfileImage()
    }
    
    func configureCell(_ messageMdodel: MessageModel) {
        profileImg?.image = messageMdodel.profileImage
        userNameLbl.text = messageMdodel.userName
        lastSenderLbl.text = messageMdodel.lastSender
        lastMessageTimeLbl.text = messageMdodel.lastMessageTime
        roundProfileImage()
    }
    
    // MARK: - Private Properties
    private func roundProfileImage(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
            self.profileImg?.layer.cornerRadius = (self.profileImg?.frame.size.width)! / 2
            self.profileImg?.clipsToBounds = true
        }
    }
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
    
}

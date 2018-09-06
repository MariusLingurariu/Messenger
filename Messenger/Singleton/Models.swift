//
//  Singleton.swift
//  Messenger
//
//  Created by Marius on 04/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import Foundation
import UIKit

class Models {
    // MARK: - Public Properties
    static let shared = Models()
    
    var messagesHistory: [MessageModel] = []
    var activeUsers: [MessageModel] = []
    var groupList: [GroupModel] = []
    
    // MARK: - Private Properties
    
    // MARK: - Public Methods
    init() {}
    
    func populateMessagesHistory(){
        messagesHistory = [
            MessageModel(image: UIImage(named: "patriarhul.jpg")!, userName: "Petrica", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(named: "clinton.jpg")!, userName: "Giorgica", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(named: "iohannis.jpg")!, userName: "Laurentiu", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(named: "ponta.jpg")!, userName: "Smiiith", lastSender: "Petrica", isActive: true),
            MessageModel(image: UIImage(named: "trump.jpg")!, userName: "Buleandra Virginel", lastSender: "Petrica", isActive: true),
            MessageModel(image: UIImage(named: "clinton.jpg")!, userName: "Pohoata", lastSender: "Petrica", isActive: true)
        ]
        messagesHistory[0].setLastActivity(dateString: "03/09/2018/02/13")
        messagesHistory[1].setLastActivity(dateString: "04/09/2018/02/13")
        messagesHistory[2].setLastActivity(dateString: "25/08/2018/02/13")
        messagesHistory[3].setLastActivity(dateString: "03/09/2018/02/13")
        messagesHistory[4].setLastActivity(dateString: "04/09/2018/02/13")
        messagesHistory[5].setLastActivity(dateString: "25/08/2018/02/13")
        
        for item in messagesHistory {
            if item.isActive {
                activeUsers.append(item)
            }
        }
        
        for groupIndex in 0...10 {
            var active = false
            if groupIndex % 2 == 0 {
                active = true
            }
            groupList.append(GroupModel(userList: messagesHistory, isActive: active, groupName: "Group \(groupIndex)"))
        }
    }
    
    // MARK: - Private Methods
    
    
    
    
    
    
    
}

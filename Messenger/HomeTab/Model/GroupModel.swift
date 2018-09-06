//
//  GroupModel.swift
//  Messenger
//
//  Created by Marius on 05/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import Foundation
import UIKit

class GroupModel {
    // MARK: - Public Properties
    private(set) var userList: [MessageModel] = []
    private(set) var isActive = true
    private(set) var groupName = ""
    private(set) var lastActive = ""
    
    // MARK: - Private Properties
    
    // MARK: - Public Methods
    init(userList: [MessageModel], isActive: Bool, groupName: String){
        self.userList = userList
        self.isActive = isActive
        self.groupName = groupName
        self.lastActive = userList[0].lastMessageTime
    }
    
    // MARK: - Private Methods
}

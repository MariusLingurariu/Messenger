//
//  ActiveUsersModel.swift
//  Messenger
//
//  Created by Marius on 31/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import Foundation
import UIKit

class ActiveUsersModel {
    // MARK: - Private Properties
    private(set) var profileImage: UIImage!
    private(set) var isActive: Bool!
    private(set) var userName: String!
    
    // MARK: - Public Methods
    init() {
        profileImage = UIImage()
        isActive = true
        userName = ""
    }
    
    init(_ profileImg: UIImage,_ isActive: Bool,_ userName: String ) {
        self.profileImage = profileImg
        self.isActive = isActive
        self.userName = userName
    }
    
    // MARK: - Private Methods
    
}

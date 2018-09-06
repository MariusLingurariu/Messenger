//
//  MenuOptionModel.swift
//  Messenger
//
//  Created by Marius on 06/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ProfileOptionModel {
    // MARK: - Public Properties
    private(set) var optionIcon: UIImage!
    private(set) var optionTitle: String!
    private(set) var optionDescription: String!
    
    // MARK: - Private Properties
    
    // MARK: - Public Methods
    init() {
        optionIcon = UIImage()
        optionTitle = ""
        optionDescription = ""
    }
    
    init(icon: UIImage, title: String, description: String) {
        optionIcon = icon
        optionTitle = title
        optionDescription = description
    }
    // MARK: - Private Methods
}

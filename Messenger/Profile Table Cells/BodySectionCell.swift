//
//  BodySectionCell.swift
//  Messenger
//
//  Created by Marius on 06/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class BodySectionCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var optionIcon: UIImageView!
    @IBOutlet weak var optionTitleLbl: UILabel!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func conigureCell(model: ProfileOptionModel){
        optionIcon.image = model.optionIcon
        optionTitleLbl.text = model.optionTitle
    }
    
    // MARK: - Private Methods
}

//
//  ActiveUsersCell.swift
//  Messenger
//
//  Created by Marius on 03/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ActiveUsersCollectionCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var activeUsersTableView: UITableView!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func configureCell(){
        activeUsersTableView.delegate = self
        activeUsersTableView.dataSource = self
    }
    
    // MARK: - Private Methods
}
extension ActiveUsersCollectionCell: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Models.shared.messagesHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = Bundle.main.loadNibNamed("ActiveUserCell", owner: self, options: nil)?.first as? ActiveUserCell {
            cell.configureCell(userModel: Models.shared.messagesHistory[indexPath.row])
            return cell
        }
        return ActiveUserCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
}

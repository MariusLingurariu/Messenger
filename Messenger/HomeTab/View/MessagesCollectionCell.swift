//
//  MessagesCollectionCell.swift
//  Messenger
//
//  Created by Marius on 03/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class MessagesCollectionCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var MessagesTableView: UITableView!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    private var messageList: [MessageModel] = []
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func configureCell(){
        MessagesTableView.dataSource = self
        MessagesTableView.delegate = self
        
        messageList = Models.shared.messagesHistory
        
    }
    
    // MARK: - Private Methods
}

extension MessagesCollectionCell: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return messageList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath[0] == 0 {
            if let cell = Bundle.main.loadNibNamed("ActiveUsersCell", owner: self, options: nil)?.first as? ActiveUsersCell {
                cell.configureCell()
                return cell
            }
        } else {
            if let cell = Bundle.main.loadNibNamed("MessagesCell", owner: self, options: nil)?.first as? MessagesCell {
                cell.configureCell(messageList[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        default:
            return 75
        }
    }
}

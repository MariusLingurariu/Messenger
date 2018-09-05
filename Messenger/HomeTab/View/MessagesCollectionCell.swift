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
    private var activeUsersList: [MessageModel] = []
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func configureCell(){
        MessagesTableView.dataSource = self
        MessagesTableView.delegate = self
        
        messageList = [
            MessageModel(image: UIImage(), userName: "Petrica", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(), userName: "Giorgica", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(), userName: "Laurentiu", lastSender: "Petrica", isActive: false),
            MessageModel(image: UIImage(), userName: "Smiiith", lastSender: "Petrica", isActive: true),
            MessageModel(image: UIImage(), userName: "Buleandra Virginel", lastSender: "Petrica", isActive: true),
            MessageModel(image: UIImage(), userName: "Pohoata", lastSender: "Petrica", isActive: true)
        ]
        messageList[0].setLastActivity(dateString: "03/09/2018/02/13")
        messageList[1].setLastActivity(dateString: "04/09/2018/02/13")
        messageList[2].setLastActivity(dateString: "25/08/2018/02/13")
        messageList[3].setLastActivity(dateString: "03/09/2018/02/13")
        messageList[4].setLastActivity(dateString: "04/09/2018/02/13")
        messageList[5].setLastActivity(dateString: "25/08/2018/02/13")
        
        for activeUser in messageList {
            activeUsersList.append(activeUser)
        }
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

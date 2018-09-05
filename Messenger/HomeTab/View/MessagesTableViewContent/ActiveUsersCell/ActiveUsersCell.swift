//
//  ActiveUsersCell.swift
//  Messenger
//
//  Created by Marius on 30/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ActiveUsersCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // MARK: - IBOutlets
    @IBOutlet weak var activeUsers: UICollectionView!
    
    // MARK: - Public Properties
    func configureCell() {
        activeUsers.delegate = self
        activeUsers.dataSource = self
        activeUsers.register(UINib(nibName: "ActiveUsersInnerCell", bundle: nil), forCellWithReuseIdentifier: "activeUsersInnerCell")
    }
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "activeUsersInnerCell", for: indexPath) as? ActiveUsersInnerCell {
            cell.configureCell()
            return cell
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // MARK: - Private Methods
}

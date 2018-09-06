//
//  GroupsCollectionCell.swift
//  Messenger
//
//  Created by Marius on 03/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class GroupsCollectionCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var groupsCollection: UICollectionView!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func configureCell() {
        groupsCollection.delegate = self
        groupsCollection.dataSource = self
        groupsCollection.register(UINib.init(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
    }
    
    // MARK: - Private Methods
}
extension GroupsCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Models.shared.groupList.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as? GroupCell{
            cell.configureCell(group: Models.shared.groupList[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = groupsCollection.frame.size.width / 2 - groupsCollection.contentInset.left - groupsCollection.contentInset.right - 20
        return CGSize(width: width, height: 205)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}

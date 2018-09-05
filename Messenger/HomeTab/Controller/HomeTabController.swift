//
//  HomeTabController.swift
//  Messenger
//
//  Created by Marius on 29/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class HomeTabController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var sectionSellector: UIVisualEffectView!
    @IBOutlet weak var sectionSellectorView: UIView!
    @IBOutlet weak var homeTabSections: UICollectionView!
    
    @IBOutlet weak var scrollPosition: UIView!
    @IBOutlet weak var activeUsersBut: UIButton!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        
        homeTabSections.delegate = self
        homeTabSections.dataSource = self
    
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollPosition.frame = CGRect(x: self.view.frame.minX,
                                      y: activeUsersBut.frame.maxY,
                                      width: activeUsersBut.frame.width,
                                      height: 2)
    }
    
    // MARK: - IBActions
    @IBAction func messagesButPressed(_ sender: Any) {
        let indexPath = IndexPath(item: 0, section: 0)
        self.homeTabSections.scrollToItem(at: indexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
    }
    @IBAction func activeButPressed(_ sender: Any) {
        let indexPath = IndexPath(item: 1, section: 0)
        self.homeTabSections.scrollToItem(at: indexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
    }
    @IBAction func groupsButPressed(_ sender: Any) {
        let indexPath = IndexPath(item: 2, section: 0)
        self.homeTabSections.scrollToItem(at: indexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
    }
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods

}

extension HomeTabController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessagesCollectionCell", for: indexPath) as? MessagesCollectionCell {
                cell.configureCell()
                return cell
            }
        case 1:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActiveUsersCollectionCell", for: indexPath) as? ActiveUsersCollectionCell {
                cell.configureCell()
                return cell
            }
        default:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupsCollectionCell", for: indexPath) as? GroupsCollectionCell {
                cell.configureCell()
                return cell
            }
        }
        return UICollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = homeTabSections.frame.size.width 
        let cellHeight = homeTabSections.frame.size.height
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
        scrollPosition.frame = CGRect(x: scrollView.contentOffset.x / 3,
                                      y: activeUsersBut.frame.maxY,
                                      width: activeUsersBut.frame.width,
                                      height: 2)
    }
}


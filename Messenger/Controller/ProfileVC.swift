//
//  ProfileController.swift
//  Messenger
//
//  Created by Marius on 06/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var activeView: UIView!
    
    @IBOutlet weak var optionTable: UITableView!
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    private var optionList1: [ProfileOptionModel] = []
    private var optionList2: [ProfileOptionModel] = []
    
    // MARK: - Overriden Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        optionTable.delegate = self
        optionTable.dataSource = self
        
        profileImage.image = UIImage(named: "trump.jpg")
        profileName.text = "An Awesome Name"
        
        optionList1 = [
            ProfileOptionModel(icon: UIImage(named: "dot.png")!, title: "Active Staus", description: "Turn on yo see who is active"),
            ProfileOptionModel(icon: UIImage(named: "profile.png")!, title: "Username", description: "m.me/profile.name")
        ]
        optionList2 = [
            ProfileOptionModel(icon: UIImage(named: "bell.png")!, title: "Notifications & Sounds", description: ""),
            ProfileOptionModel(icon: UIImage(named: "signal.png")!, title: "Data Saver", description: ""),
            ProfileOptionModel(icon: UIImage(named: "bubble.png")!, title: "SMS", description: ""),
            ProfileOptionModel(icon: UIImage(named: "person.png")!, title: "People", description: ""),
            ProfileOptionModel(icon: UIImage(named: "photo.png")!, title: "Photos & Media", description: "")
        ]
        setRadius()
    }
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
    private func setRadius() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2
            self.profileImage.clipsToBounds = true
            self.profileImage.layer.borderWidth = 3
            self.profileImage.layer.borderColor = UIColor(red: 0/225, green: 168/225, blue: 225, alpha: 1).cgColor
            self.activeView.layer.cornerRadius = self.activeView.frame.size.width / 2
            self.activeView.layer.borderWidth = 3
            self.activeView .layer.borderColor = UIColor(red: 225, green: 225, blue: 225, alpha: 1).cgColor
        }
    }
}

extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch  section {
        case 0:
            return optionList1.count
        default:
            return optionList2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = Bundle.main.loadNibNamed("HeaderSectionCell", owner: self, options: nil)?.first as? HeaderSectionCell {
                cell.conigureCell(model: optionList1[indexPath.row])
                return cell
            }
            return HeaderSectionCell()
        default:
            if let cell = Bundle.main.loadNibNamed("BodySectionCell", owner: self, options: nil)?.first as? BodySectionCell {
                cell.conigureCell(model: optionList2[indexPath.row])
                return cell
            }
            return BodySectionCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 15
    }
}

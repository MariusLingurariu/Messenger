//
//  MessageModel.swift
//  Messenger
//
//  Created by Marius on 04/09/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit

class MessageModel {
    // MARK: - Public Properties
    private(set) var profileImage: UIImage!
    private(set) var userName: String!
    private(set) var lastSender: String!
    private(set) var isActive: Bool = true
    private var _lastMessageTime = Date()
    private var _lastActive = Date()
    
    public var lastActive: String {
        get{
            let timeInterval = Date().timeIntervalSinceReferenceDate - _lastActive.timeIntervalSinceReferenceDate
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "m"
            return dateFormatter.string(from: Date.init(timeIntervalSinceReferenceDate: timeInterval))
        }
    }
    public var lastMessageTime: String {
        get{
            let timeInterval = Date().timeIntervalSinceReferenceDate - _lastActive.timeIntervalSinceReferenceDate
            let dateFormatter = DateFormatter()
            var stringDate = ""
            if timeInterval > 86400 {
                if timeInterval > 604800 {
                    dateFormatter.dateFormat = "MMM-dd"
                    return dateFormatter.string(from: Date.init(timeIntervalSinceReferenceDate: _lastActive.timeIntervalSinceReferenceDate))
                }
                dateFormatter.dateFormat = "EE"
                return dateFormatter.string(from: Date.init(timeIntervalSinceReferenceDate: _lastActive.timeIntervalSinceReferenceDate))
            } else {
                dateFormatter.dateFormat = "hh:mm"
                return dateFormatter.string(from: Date.init(timeIntervalSinceReferenceDate: _lastActive.timeIntervalSinceReferenceDate))
            }
        }
    }
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    init(image: UIImage, userName: String, lastSender: String, isActive: Bool) {
        self.profileImage = image
        self.userName = userName
        self.lastSender = lastSender
        if isActive {
            setActive()
        } else {
            setInactive()
        }
    }
    init() {
        self.profileImage = UIImage()
        self.userName = ""
    }
    
    func setActive(){
        self.isActive = true
    }
    
    func setInactive(){
        self.isActive = false
        _lastMessageTime = Date()
        _lastActive = Date()
    }
    func setLastActivity(dateString: String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy/hh/mm"
        _lastMessageTime = dateFormatter.date(from: dateString)!
        _lastActive = dateFormatter.date(from: dateString)!
    }
    
    
    // MARK: - Private Methods
    
}

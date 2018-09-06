//
//  Cameratabcontroller.swift
//  Messenger
//
//  Created by Marius on 29/08/2018.
//  Copyright © 2018 Marius. All rights reserved.
//

import UIKit
import AVFoundation

class CameraTabController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: - IBOutlets
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Overriden Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated: true, completion: nil)
    }
    
    // MARK: - IBActions
    
    // MARK: - Public Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Private Methods

}

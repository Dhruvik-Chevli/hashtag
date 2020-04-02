//
//  NavigationBarController.swift
//  Users
//
//  Created by Nitigya Kapoor on 03/04/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//


import UIKit

class MasterNavigationBarController: UINavigationController {
    
    private var themedStatusBarStyle: UIStatusBarStyle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        themedStatusBarStyle = .lightContent
        setNeedsStatusBarAppearanceUpdate()
        
        navigationBar.barTintColor = .white
        navigationBar.tintColor = .clear
        
        navigationBar.isTranslucent = true
        navigationBar.shadowImage = UIImage()
        navigationBar.setValue(true, forKey: "hidesShadow")
        
        let titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        navigationBar.titleTextAttributes = titleTextAttributes
        navigationBar.largeTitleTextAttributes = titleTextAttributes
    }
}


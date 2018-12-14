//
//  searchViewController.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/9/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit

class MainViewController :  UITabBarController{
    
    let backToLoginButton: UIButton = {
        let color = UIColor(red: 89/255, green: 156/255, blue: 128/255, alpha: 1)
        let haveAcc = UIButton(type: .system)
        let font = UIFont.systemFont(ofSize: 18)
        haveAcc.backgroundColor = .black
        let attributedTitle = NSMutableAttributedString(string: "back",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white,NSAttributedString.Key.font: font])
        
        haveAcc.setAttributedTitle(attributedTitle, for: .normal)
        haveAcc.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        return haveAcc
        
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpBackButton()
        
        
        setUptabBar()
    }
    
    @objc func backButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func setUpBackButton() {
        view.addSubview(backToLoginButton)
        
        backToLoginButton.anchors(top: view.safeAreaLayoutGuide.topAnchor, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
    }
    
    func setUptabBar(){
        let messageController = UINavigationController(rootViewController: MessageViewController())
        messageController.tabBarItem.image = UIImage(named: "messages_Icon_gray")
        messageController.tabBarItem.selectedImage = UIImage(named: "messages_icon_color")
        
        let settingsController = UINavigationController(rootViewController: SettingsViewController())
        settingsController.tabBarItem.image = UIImage(named: "profile_icon_grey")
        settingsController.tabBarItem.selectedImage = UIImage(named: "profile_icon_color")
        
        let searchController = UINavigationController(rootViewController: MapViewController())
        searchController.tabBarItem.image = UIImage(named: "search_icon_grey")
        searchController.tabBarItem.selectedImage = UIImage(named: "search_icon_color")
        
        viewControllers = [settingsController,searchController,messageController]
        
        
    }
}

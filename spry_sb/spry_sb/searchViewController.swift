//
//  searchViewController.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/9/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit

class SearchViewController : UIViewController {
    
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
        view.backgroundColor = .yellow
        setUpBackButton()
    }
    
    @objc func backButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func setUpBackButton() {
        view.addSubview(backToLoginButton)
        
        backToLoginButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
    }
    
}

//
//  loginButton.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/8/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit


class AuthButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        let button = UIButton.init(type: .system)
        button.layer.backgroundColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0).cgColor
        button.layer.cornerRadius = 15.0
    }
    
}

//
//  SettingsViewController.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/13/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit
import SnapKit



class SettingsViewController: UIViewController {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 20
        return view
    }()
    
    let subView: UIButton = {
        let view = UIButton(type: .custom)
        view.backgroundColor = UIColor.red
        view.layer.borderColor = UIColor.yellow.cgColor
        view.layer.borderWidth = 3.0
        view.setImage(UIImage(named:"snk"), for: .normal)
        view.layer.borderWidth = 2
        view.clipsToBounds = true
        view.layer.cornerRadius = 100
        view.addTarget(self, action: #selector(profileAction), for: .touchUpInside)
        return view
    }()
    
    let editView : UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor.white.cgColor
        view.layer.cornerRadius = 50
        return view
    }()
    
    let editImage : UIImageView = {
        let view = UIImageView(frame: CGRect(x: 182, y: 299, width: 29, height: 29))
        let image = UIImage(named: "edit")
        view.clipsToBounds = true
        view.image = image
        return view
    }()
    
    let nameLabel: UILabel = {
        let style = UILabel(frame: CGRect(x: 150, y: 344, width: 96, height: 17))
        style.clipsToBounds = true
        style.alpha = 1
        style.text = "Adam"
        style.font = UIFont(name: "SourceSansPro-Bold", size: 18)
        style.textColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)
        return style
    }()
    
    let preferencesButton : UIButton = {
        let loginButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Preferences", for: .normal)
        loginButton.layer.cornerRadius = 25
        loginButton.backgroundColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0)
        return loginButton
    }()
    
    let accountButton : UIButton = {
        let loginButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Account", for: .normal)
        loginButton.layer.cornerRadius = 25
        loginButton.backgroundColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0)
        return loginButton
    }()
    
    let helpCenterButton : UIButton = {
        let loginButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Help Center", for: .normal)
        loginButton.layer.cornerRadius = 25
        loginButton.backgroundColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0)
        return loginButton
        
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [preferencesButton,accountButton,helpCenterButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 15
        return stackView
    }()
    
    @objc func profileAction() {
        let profileController = ProfileEditViewController()
        navigationController?.pushViewController(profileController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        setupView()
    }
    
    func setupView() {
        view.addSubview(mainView)
        mainView.addSubview(subView)
        mainView.addSubview(editView)
        editView.addSubview(editImage)
        editView.addSubview(nameLabel)
        mainView.addSubview(buttonStackView)
        
  
        mainView.snp.makeConstraints { (make) in
           make.edges.equalTo(self.view)
           
        }
        
        subView.snp.makeConstraints { (make) in
            
            make.width.height.equalTo(200)
            make.centerX.equalTo(self.mainView.snp.centerX)
            make.topMargin.equalTo(40)
            
        }
        
        editView.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerX.equalTo(self.mainView.snp.centerX)
            make.topMargin.equalTo(170)
            
        }
        
        editImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.editView.snp.centerX)
            make.topMargin.equalTo(20)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.editView.snp.centerX)
            make.topMargin.equalTo(69)
        }
        
        buttonStackView.snp.makeConstraints { (make) in
            make.width.equalTo(338)
            make.height.equalTo(180)
            make.centerX.equalTo(self.mainView.snp.centerX)
            make.topMargin.equalTo(300)

        }


    }


}

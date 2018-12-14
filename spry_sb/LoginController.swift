//
//  ViewController.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/8/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let emailTextField: UITextField = {
        let emailField = UITextField()
        emailField.textColor = .black
        let font = UIFont.systemFont(ofSize: 14)
        emailField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font: font])
        emailField.backgroundColor = .white
        //emailField.layer.borderWidth = 2
        emailField.setBottomBorder(backgroundColor: .white, borderColor: BORDER_COLOR)
        return emailField
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.textColor = .black
        //passwordTextField.layer.borderColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0) as! CGColor
        //passwordTextField.layer.borderWidth = 2
        passwordTextField.isSecureTextEntry = true
        let font = UIFont.systemFont(ofSize: 14)
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font: font])
        passwordTextField.backgroundColor = .white
        passwordTextField.setBottomBorder(backgroundColor: .white, borderColor: BORDER_COLOR)
        return passwordTextField
    }()
    
    let loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Log In", for: .normal)
        loginButton.layer.cornerRadius = 25
        loginButton.backgroundColor = UIColor(red:0.94, green:0.59, blue:0.10, alpha:1.0)
        
        loginButton.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        
        return loginButton
    }()
    
    let forgotPasswordButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.setTitle("Forgot Password?", for: .normal)
        loginButton.backgroundColor = .white
        return loginButton
    }()
    
    let haveAccountButton: UIButton = {
        let color = UIColor(red: 89/255, green: 156/255, blue: 128/255, alpha: 1)
        let haveAcc = UIButton(type: .system)
        let font = UIFont.systemFont(ofSize: 18)
        haveAcc.backgroundColor = .white
        let attributedTitle = NSMutableAttributedString(string: "No  account?",
                                                 attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font: font])

        attributedTitle.append(NSAttributedString(string: " Sign Up with Phone Number",
                                                  attributes: [NSAttributedString.Key.foregroundColor :
                                                    UIColor.black, NSAttributedString.Key.font: font]))
        
        haveAcc.setAttributedTitle(attributedTitle, for: .normal)
        return haveAcc
        
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func signInAction() {
        let searchController = MainViewController()
        navigationController?.pushViewController(searchController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
       
        view.backgroundColor = .white
        setUpTextField()
        setUpLoginButton()
        setUpForgotPassword()
        setupHaveAccountButton()
        
        
    }
    
    func setUpTextField() {
        setUpEmailField()
        setUpPasswordField()
    }
    
    func setUpEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        //emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive  = true
        
    }

    
    func setUpPasswordField(){
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: emailTextField.leftAnchor, constant: 0).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: emailTextField.rightAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    
    func setUpLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12).isActive = true
        loginButton.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor, constant: 0).isActive = true
        loginButton.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func setUpForgotPassword(){
        view.addSubview(forgotPasswordButton)
        
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 8).isActive = true
        forgotPasswordButton.leftAnchor.constraint(equalTo: loginButton.leftAnchor, constant: 0).isActive = true
        forgotPasswordButton.rightAnchor.constraint(equalTo: loginButton.rightAnchor, constant: 0).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    func setupHaveAccountButton() {
        
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12).isActive = true
        haveAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        haveAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    



}


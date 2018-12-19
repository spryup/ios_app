//
//  MessageViewController.swift
//  spry_sb
//
//  Created by Chamika Dharmasena on 12/13/18.
//  Copyright © 2018 spryup. All rights reserved.
//

import UIKit

class MessageViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    private let cellId = "cellId"
    let screenSize = UIScreen.main.bounds

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Messages"
        collectionView?.backgroundColor = UIColor.white
        collectionView.alwaysBounceVertical = true
        collectionView.register(FriendCell.self, forCellWithReuseIdentifier: cellId)

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:screenSize.width,height:100)
    }

    
    class FriendCell:BaseCell {
        
        let profileImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.layer.cornerRadius = 34
            imageView.layer.masksToBounds = true
            return imageView
        }()
        
        let dividerLineView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(white: 0.5, alpha:0.5)
            return view
        }()
        
        let nameLabel:UILabel = {
           let label = UILabel()
           label.text = "John Doe"
            label.font = UIFont.systemFont(ofSize: 18)
           return label
        }()
        
        let messageLabel:UILabel = {
            let label = UILabel()
            label.text = "Hey...., Glad we connected...."
            label.textColor = UIColor.darkGray
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }()
        
        let timeLabel: UILabel = {
            let label = UILabel()
            label.text = "12.05 pm"
            label.font = UIFont.systemFont(ofSize: 14)
            label.textAlignment = .right
            return label
        }()
        
        override func setupViews() {
            
            addSubview(profileImageView)
            addSubview(dividerLineView)
            
            setUpContainerView()
            
            profileImageView.image = UIImage(named: "snk")
           profileImageView.translatesAutoresizingMaskIntoConstraints = false
            dividerLineView.translatesAutoresizingMaskIntoConstraints = false
           
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-12-[v0(68)]",  metrics: nil, views: ["v0" : profileImageView]))
           NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(68)]", metrics: nil, views: ["v0":profileImageView]))
            
            addConstraints([NSLayoutConstraint(item: profileImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
            
           NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|-82-[v0]|", metrics: nil, views: ["v0" : dividerLineView]))
           NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"V:[v0(1)]|", metrics: nil, views: ["v0" : dividerLineView]))
        }
        
         func setUpContainerView() {
            
            let containerView = UIView()
            containerView.translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(containerView)
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|-90-[v0]|", metrics: nil, views: ["v0" : containerView]))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"V:[v0(50)]", metrics: nil, views: ["v0" : containerView]))
            addConstraints([NSLayoutConstraint(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
            
            nameLabel.translatesAutoresizingMaskIntoConstraints = false
            messageLabel.translatesAutoresizingMaskIntoConstraints = false
            timeLabel.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(nameLabel)
            containerView.addSubview(messageLabel)
            containerView.addSubview(timeLabel)
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|[v0][v1(80)]-12-|", metrics: nil, views: ["v0" : nameLabel,"v1":timeLabel]))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"V:|[v0][v1(24)]|", metrics: nil, views: ["v0" : nameLabel,"v1":messageLabel]))

            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"H:|[v0]-12-|", metrics: nil, views: ["v0" : messageLabel]))
             NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat:"V:|[v0(24)]", metrics: nil, views: ["v0" : timeLabel]))
            
        }
        
    }
    
    class BaseCell: UICollectionViewCell  {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coders) has not been implemented")
        }
        
        func setupViews() {
            backgroundColor = UIColor.blue
        }
    }
    


}

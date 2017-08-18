//
//  Cell.swift
//  Slide-inMenu_Test
//
//  Created by user on 8/17/17.
//  Copyright © 2017 Ski. All rights reserved.
//

import UIKit


class SettingCell: BaseCell {
    
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor.darkGray : UIColor.white
            nameLabel.textColor = isHighlighted ? UIColor.white : UIColor.black
            iconImageView.tintColor = isHighlighted ? UIColor.white : UIColor.darkGray
            print(isHighlighted)
        }
    }
    
    var setting: Setting? {
        didSet {
            nameLabel.text = setting?.name
            if let imageName = setting?.imageName {
                iconImageView.image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
                iconImageView.tintColor = UIColor.darkGray
            }
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        //label.text = "Setting"
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "settings-icon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(nameLabel)
        addSubview(iconImageView)
        
        addConstraintsWithFormat(format: "H:|-16-[v0(30)]-28-[v1]|", view: iconImageView, nameLabel)
        addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
        //addConstraintsWithFormat(format: "H:|-32-[v0]|", view: nameLabel)
        addConstraintsWithFormat(format: "V:[v0(30)]", view: iconImageView)
        
        addConstraint(NSLayoutConstraint(item: iconImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        
    }
}

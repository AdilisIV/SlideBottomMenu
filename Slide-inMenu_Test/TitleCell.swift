//
//  TitleCell.swift
//  Slide-inMenu_Test
//
//  Created by user on 8/21/17.
//  Copyright © 2017 Ski. All rights reserved.
//

import UIKit


class TitleCell: BaseCell {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    
    var companyNameString: String? {
        didSet {
            nameLabel.text = companyNameString
        }
    }
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(nameLabel)
        
        addConstraintsWithFormat(format: "H:|-22-[v0]-16-|", view: nameLabel)
        addConstraintsWithFormat(format: "V:|[v0]|", view: nameLabel)
    }
    
}

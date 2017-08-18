//
//  BaseCell.swift
//  Slide-inMenu_Test
//
//  Created by user on 8/17/17.
//  Copyright © 2017 Ski. All rights reserved.
//

import UIKit

class BaseCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
    }
}

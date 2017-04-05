//
//  CircleView.swift
//  SocialMediaApp
//
//  Created by Milos Mladenovic on 4/4/17.
//  Copyright © 2017 Milos Mladenovic. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
}

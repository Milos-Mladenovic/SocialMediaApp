//
//  CircleButton.swift
//  SocialMediaApp
//
//  Created by Milos Mladenovic on 4/4/17.
//  Copyright © 2017 Milos Mladenovic. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
    
    @IBInspectable var circleradius: CGFloat = 30.0 {
        didSet{
            setupView()
        }
    }
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    func setupView() {
        layer.cornerRadius = circleradius
    }
}

//
//  SystemButton.swift
//  libui
//
//  Created by Mason Phillips on 12/1/18.
//  Copyright © 2018 Mason Phillips. All rights reserved.
//

import UIKit

class SystemButton: UIButton {
    convenience init(background bg: UIColor = .clear, text: String) {
        self.init(frame: CGRect())
        
        self.backgroundColor = bg
        self.setTitle(text, for: .normal)
        self.titleLabel?.textColor = .white
    }
    
    func roundCorners() {
        layer.cornerRadius = 15
    }
}

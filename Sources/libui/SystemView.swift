//
//  SystemView.swift
//  libui
//
//  Created by Mason Phillips on 12/1/18.
//  Copyright © 2018 Mason Phillips. All rights reserved.
//

import UIKit

class SystemView: UIView {
    init() {
        super.init(frame: CGRect())
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    func roundCorners() {
        layer.cornerRadius = 15
    }
}

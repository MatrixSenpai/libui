//
//  SystemLabel.swift
//  libui
//
//  Created by Mason Phillips on 12/1/18.
//  Copyright © 2018 Mason Phillips. All rights reserved.
//

import UIKit

/// A UILabel subclass with more configuration on init
class SystemLabel: UILabel {
    /// CSS3-style padding-top
    public var topInset   : CGFloat = 0.0
    /// CSS3-style padding-bottom
    public var bottomInset: CGFloat = 0.0
    /// CSS3-style padding-left
    public var leftInset  : CGFloat = 0.0
    /// CSS3-style padding-right
    public var rightInset : CGFloat = 0.0

    /// Intrinsic content size accounting for insets
    public override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        
        return CGSize(width : (size.width + leftInset + rightInset),
                      height: (size.height + topInset + bottomInset))
    }
    
    /// Default initializer, still available
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    /// Init with options for text position, color, and size
    /// - parameter position: NSTextAlignment position (left, right, center). Defaults to left
    /// - parameter size: Font size to be used. Defaults to system font size
    /// - parameter color: Text color to be used. Defaults to white
    public convenience init(_ position: NSTextAlignment = .left, size: CGFloat = UIFont.systemFontSize, color: UIColor = .white) {
        self.init(frame: CGRect())
        
        self.textColor = color
        self.textAlignment = position
        self.font = UIFont.systemFont(ofSize: size)
    }
    
    public func multiline(lines l: Int = 0) {
        self.numberOfLines = l
        self.lineBreakMode = .byWordWrapping
    }
    
    public override func draw(_ rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not used by this library")
    }
}


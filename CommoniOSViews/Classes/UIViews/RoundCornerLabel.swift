//
//  RoundCornerLabel.swift
//  Pods
//
//  Created by Sharif Khaleel on 6/13/17.
//
//

import Foundation
import UIKit

@IBDesignable
public class RoundCornerLabel: UILabel {
    
    var layoutSet = false
    
    @IBInspectable var cornerRadius: CGFloat = 8 {
        didSet{
            setStyle()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet{
            setStyle()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            setStyle()
        }
    }
    
    @IBInspectable var padding: CGFloat = 0 {
        didSet{
            setStyle()
        }
    }
    
    override public func layoutSubviews() {
        if !layoutSet{
            self.setStyle()
            layoutSet = true
        }
    }
    
    override public func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        self.setNeedsLayout()
        return super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    func setStyle(){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor  = borderColor.cgColor
        self.layer.borderWidth  = borderWidth
        self.layer.masksToBounds = true
    }
    
}

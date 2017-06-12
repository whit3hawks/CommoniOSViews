//
//  CircleView.swift
//  Pods
//
//  Created by Sharif Khaleel on 6/13/17.
//
//

import Foundation

@IBDesignable
public class CircleImageView:UIImageView{
    
    var layoutSet = false
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            setStyle()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
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
    
    func setStyle(){
        self.layer.borderColor  = borderColor.cgColor
        self.layer.borderWidth  = borderWidth
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
}

//
//  ShadowView.swift
//  Pods
//
//  Created by Sharif Khaleel on 6/12/17.
//
//

import Foundation
import UIKit

@IBDesignable
public class ShadowView: UIView {
    
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
    
    //    override init(frame: CGRect) {
    //        super.init(frame: frame)
    //    }
    //
    //    required init?(coder aDecoder: NSCoder) {
    //        super.init(coder: aDecoder)
    //    }
    
    override public func layoutSubviews() {
        if !layoutSet{
            self.setStyle()
            layoutSet = true
        }
    }
    
    func setStyle(){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor  = borderColor.cgColor
        self.layer.borderWidth  = borderWidth
        self.layer.shadowColor   = UIColor(hexString: "C7C7C7", alpha: 1).cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius  = 5
        self.layer.shadowOffset  = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
    
}


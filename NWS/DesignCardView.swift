//
//  DesignCardView.swift
//  cardView
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class DesignCardView:UIView{
    
    
    @IBInspectable var cornerRadius:CGFloat=10
    @IBInspectable var shadowColor:UIColor?=UIColor.black
    
    
    
    @IBInspectable var shadowOfSetWidth:Int=0
    @IBInspectable var hadowOfSetHeight:Int=1
    
    @IBInspectable var shadowOpacity:Float=0.2
    
    
    
    override func layoutSubviews() {
        
        layer.cornerRadius=cornerRadius
        layer.shadowColor=shadowColor?.cgColor
        layer.shadowOffset=CGSize(width: shadowOfSetWidth, height: hadowOfSetHeight)
        
        let shadowPath=UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath=shadowPath.cgPath
        
        layer.shadowOpacity=shadowOpacity
        
        
        
        
        
    }
    
    
}

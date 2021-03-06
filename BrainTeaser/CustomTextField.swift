//
//  CustomTextField.swift
//  BrainTeaser
//
//  Created by Jonny B on 3/26/16.
//  Copyright © 2016 Jonny B. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {
    
    @IBInspectable var inset: CGFloat = 0
    
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            setupView()
        }
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, inset, inset)
        
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
        
    }
    
    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5.0
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView() {
        
        self.layer.cornerRadius = cornerRadius
    }
    
}

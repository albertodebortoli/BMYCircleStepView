//
//  CircleView.swift
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    let valueLabel: UILabel = UILabel(frame: CGRectZero)
    var value: String? {
        set(newValue) {
            self.valueLabel.text = newValue
        }
        get {
            return self.valueLabel.text
        }
    }
    var font: UIFont? {
        set(newValue) {
            self.valueLabel.font = newValue!
        }
        get {
            return self.valueLabel.font
        }
    }
    var selectedColor: UIColor? = UIColor.lightGrayColor()
    var unselectedColor: UIColor? = UIColor.whiteColor()
    var borderThickness: CGFloat = 0.0
    var selected: Bool = false
    
    required init(coder aDecoder: NSCoder)
    {
        self.valueLabel.textAlignment = .Center;
        super.init(coder: aDecoder)
        self.addSubview(self.valueLabel)
    }
    
    override init(frame: CGRect)
    {
        self.valueLabel.textAlignment = .Center;
        super.init(frame: frame)
        self.addSubview(self.valueLabel)
    }
    
    override func drawRect(rect: CGRect)
    {
        let width = CGRectGetWidth(rect)
        let height = CGRectGetHeight(rect)
        let minSize = min(width, height)
        
        let squareRect = CGRectMake((width / 2) - (minSize / 2),
            (height / 2) - (minSize / 2),
            minSize,
            minSize)
        
        let ctx: CGContextRef = UIGraphicsGetCurrentContext()
        CGContextAddEllipseInRect(ctx, squareRect)
        CGContextSetFillColorWithColor(ctx, self.selectedColor?.CGColor)
        CGContextFillPath(ctx)
        
        if (self.selected) {
            let innerRect = CGRectInset(squareRect, self.borderThickness, self.borderThickness)
            CGContextAddEllipseInRect(ctx, innerRect)
            CGContextSetFillColorWithColor(ctx, self.unselectedColor!.CGColor)
            CGContextFillPath(ctx)
            self.valueLabel.textColor = self.selectedColor!
        }
        else {
            self.valueLabel.textColor = self.unselectedColor!
        }
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        self.valueLabel.frame = self.bounds
        self.setNeedsDisplay()
    }
}

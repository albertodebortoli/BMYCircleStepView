//
//  CircleView.swift
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    private let valueLabel: UILabel = UILabel(frame: CGRectZero)
    var value: String? {
        set {
            valueLabel.text = newValue
        }
        get {
            return valueLabel.text
        }
    }
    var font: UIFont {
        set {
            valueLabel.font = newValue
        }
        get {
            return valueLabel.font
        }
    }
    var selectedColor: UIColor? = UIColor.lightGrayColor()
    var unselectedColor: UIColor? = UIColor.whiteColor()
    var borderThickness: CGFloat = 0.0
    var selected: Bool = false
    
    required init(coder aDecoder: NSCoder) {
        valueLabel.textAlignment = .Center
        super.init(coder: aDecoder)
        addSubview(valueLabel)
    }
    
    override init(frame: CGRect) {
        valueLabel.textAlignment = .Center
        super.init(frame: frame)
        addSubview(valueLabel)
    }
    
    override func drawRect(rect: CGRect) {
        let width = CGRectGetWidth(rect)
        let height = CGRectGetHeight(rect)
        let minSize = min(width, height)
        
        let squareRect = CGRectMake((width / 2) - (minSize / 2),
            (height / 2) - (minSize / 2),
            minSize,
            minSize)
        
        let ctx: CGContextRef = UIGraphicsGetCurrentContext()
        CGContextAddEllipseInRect(ctx, squareRect)
        CGContextSetFillColorWithColor(ctx, selectedColor?.CGColor)
        CGContextFillPath(ctx)
        
        if (selected) {
            let innerRect = CGRectInset(squareRect, borderThickness, borderThickness)
            CGContextAddEllipseInRect(ctx, innerRect)
            CGContextSetFillColorWithColor(ctx, unselectedColor!.CGColor)
            CGContextFillPath(ctx)
            valueLabel.textColor = selectedColor!
        }
        else {
            valueLabel.textColor = unselectedColor!
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        valueLabel.frame = bounds
        setNeedsDisplay()
    }
}

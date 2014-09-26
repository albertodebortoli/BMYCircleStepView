//
//  CircleStepView.swift
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

import UIKit

class CircleStepView: UIView {
    
    private var _circleViews: Array<CircleView>
    var font: UIFont?
    var selectedColor: UIColor? = UIColor.lightGrayColor()
    var unselectedColor: UIColor? = UIColor.whiteColor()
    var borderThickness: CGFloat = 0.0
    
    var numberOfSteps: Int {
        set {
            _circleViews.removeAll(keepCapacity: 0)
            for subview in subviews {
                subview.removeFromSuperview()
            }
            for i in 0..<newValue {
                let cv = CircleView(frame: CGRectZero)
                cv.value = String(i+1)
                if let fnt = font {
                    cv.font = fnt
                }
                cv.selectedColor = selectedColor
                cv.unselectedColor = unselectedColor
                cv.borderThickness = borderThickness
                cv.backgroundColor = UIColor.clearColor()
                _circleViews.append(cv)
                addSubview(cv)
            }
            setNeedsDisplay()
        }
        get {
            return subviews.count
        }
    }
    var currentStep: Int = 0 {
        willSet {
            _circleViews[currentStep].selected = false
        }
        didSet {
            _circleViews[currentStep].selected = true
            setNeedsDisplay()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        _circleViews = Array<CircleView>()
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var width = CGRectGetWidth(bounds)
        var height = CGRectGetHeight(bounds)
        var numberOfCircleViews = CGFloat(_circleViews.count)
    
        if (numberOfCircleViews > 1) {
            var unusedSpace = width - (height * numberOfCircleViews)
            width += (unusedSpace / (numberOfCircleViews - 1))
            for (i, circleView) in enumerate(_circleViews) {
                circleView.frame = CGRect(
                    x: (width / numberOfCircleViews) * CGFloat(i),
                    y: 0.0,
                    width: height,
                    height: height
                )
            }
        }
        else if (numberOfCircleViews == 1){
            var circleView = _circleViews.first as CircleView?
            circleView!.frame = CGRectMake((width / 2) - (height / 2),
                0.0,
                height,
                height)
        }
    }
}

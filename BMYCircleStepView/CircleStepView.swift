//
//  CircleStepView.swift
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

import UIKit

class CircleStepView: UIView {

    var circleViews: Array<CircleView>
    var font: UIFont?
    var selectedColor: UIColor? = UIColor.lightGrayColor()
    var unselectedColor: UIColor? = UIColor.whiteColor()
    var borderThickness: CGFloat = 0.0
    
    var numberOfSteps: Int {
        set(newValue) {
            self.circleViews.removeAll(keepCapacity: 0)
            
            for subview in self.subviews {
                subview.removeFromSuperview()
            }
            for i in 0..<newValue {
                let cv = CircleView(frame: CGRectZero)
                cv.value = String(i+1)
                cv.font = self.font
                cv.selectedColor = self.selectedColor
                cv.unselectedColor = self.unselectedColor
                cv.borderThickness = self.borderThickness
                cv.backgroundColor = UIColor.clearColor()
                self.circleViews.append(cv)
                self.addSubview(cv)
            }
            self.setNeedsDisplay()
        }
        get {
            return self.subviews.count
        }
    }
    var currentStep: Int = 0 {
        willSet(newValue) {
            (self.circleViews[self.currentStep] as CircleView).selected = false
        }
        didSet {
            (self.circleViews[self.currentStep] as CircleView).selected = true
            self.setNeedsDisplay()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        self.circleViews = Array<CircleView>()
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var width = CGRectGetWidth(self.bounds)
        var height = CGRectGetHeight(self.bounds)
        var numberOfCircleViews = CGFloat(self.circleViews.count)
    
        if (numberOfCircleViews > 1) {
            var unusedSpace = width - (height * numberOfCircleViews)
            width += (unusedSpace / (numberOfCircleViews - 1));
            for i in 0..<Int(numberOfCircleViews) {
                var circleView = self.circleViews[i]
                circleView.frame = CGRectMake((width / numberOfCircleViews) * CGFloat(i),
                0.0,
                height,
                height);
            }
        }
        else if (numberOfCircleViews == 1){
            var circleView = self.circleViews.first as CircleView?;
            circleView!.frame = CGRectMake((width / 2) - (height / 2),
                0.0,
                height,
                height);
        }
    }
}

//
//  BMYCircleStepView.h
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMYCircleStepView : UIView

// pass-through for BMYCircleView
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIColor *selectedColor;
@property (nonatomic, strong) UIColor *unselectedColor;
@property (nonatomic, assign) CGFloat borderThickness;

// this object
@property (nonatomic, assign) NSInteger numberOfSteps;
@property (nonatomic, assign) NSInteger currentStep;

// fills the steps up to the current one
@property (nonatomic, assign) BOOL fillSteps;

@end

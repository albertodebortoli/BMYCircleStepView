//
//  BMYCircleView.h
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMYCircleView : UIView

@property (nonatomic, copy) NSString *value;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIColor *selectedColor;
@property (nonatomic, strong) UIColor *unselectedColor;
@property (nonatomic, assign) CGFloat borderThickness;
@property (nonatomic, assign) BOOL selected;

@end

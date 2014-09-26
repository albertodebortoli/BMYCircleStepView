//
//  BMYCircleView.m
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYCircleView.h"

#import <QuartzCore/QuartzCore.h>

@interface BMYCircleView ()

@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation BMYCircleView

- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self _commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self _commonInit];
    }
    return self;
}

- (void)_commonInit {
    _valueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _valueLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_valueLabel];
}

- (void)setValue:(NSString *)value {
    _value = value;
    self.valueLabel.text = value;
}

- (void)setFont:(UIFont *)font {
    _font = font;
    self.valueLabel.font = font;
}

- (void)setSelected:(BOOL)selected {
    _selected = selected;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    CGFloat minSize = MIN(width, height);
    
    CGRect squareRect = CGRectMake((width / 2) - (minSize / 2),
                                   (height / 2) - (minSize / 2),
                                   minSize,
                                   minSize);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, squareRect);
    CGContextSetFillColorWithColor(ctx, self.selectedColor.CGColor);
    CGContextFillPath(ctx);

    if (!self.selected) {
        CGRect innerRect = CGRectInset(squareRect, self.borderThickness, self.borderThickness);
        CGContextAddEllipseInRect(ctx, innerRect);
        CGContextSetFillColorWithColor(ctx, self.unselectedColor.CGColor);
        CGContextFillPath(ctx);
        
        self.valueLabel.textColor = self.selectedColor;
    }
    else {
        self.valueLabel.textColor = self.unselectedColor;
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.valueLabel.frame = self.bounds;
    [self setNeedsDisplay];
}

@end

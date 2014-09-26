//
//  BMYCircleStepView.m
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYCircleStepView.h"

#import "BMYCircleView.h"

@interface BMYCircleStepView ()

@property (nonatomic, strong) NSMutableArray *circleViews;

@end

@implementation BMYCircleStepView

- (void)setNumberOfSteps:(NSInteger)numberOfSteps {
    _numberOfSteps = numberOfSteps;
    if (!self.circleViews) {
        self.circleViews = [NSMutableArray array];
    }
    
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:[BMYCircleView class]]) {
            [subview removeFromSuperview];
        }
    }
    
    [self.circleViews removeAllObjects];
    
    for (NSInteger i = 0; i < numberOfSteps; i++) {
        BMYCircleView *circleView = [[BMYCircleView alloc] initWithFrame:CGRectZero];
        circleView.value = [NSString stringWithFormat:@"%li", (long)(i+1)];
        circleView.font = self.font;
        circleView.selectedColor = self.selectedColor;
        circleView.unselectedColor = self.unselectedColor;
        circleView.borderThickness = self.borderThickness;
        circleView.backgroundColor = [UIColor clearColor];
        [self.circleViews addObject:circleView];
        [self addSubview:circleView];
    }

    [self setNeedsDisplay];
}

- (void)setCurrentStep:(NSInteger)currentStep {
    BMYCircleView *circleView = self.circleViews[_currentStep];
    circleView.selected = NO;
    _currentStep = currentStep;
    circleView = self.circleViews[_currentStep];
    circleView.selected = YES;
    [self setNeedsDisplay];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat width = CGRectGetWidth(self.bounds);
    CGFloat height = CGRectGetHeight(self.bounds);
    NSInteger numberOfCircleViews = [self.circleViews count];
    
    if (numberOfCircleViews > 1) {
        CGFloat unusedSpace = width - (height * numberOfCircleViews);
        width += (unusedSpace / (numberOfCircleViews - 1));
        for (NSInteger i = 0; i < numberOfCircleViews; i++) {
            BMYCircleView *circleView = self.circleViews[i];
            circleView.frame = CGRectMake(ceilf((width / numberOfCircleViews) * i),
                                          0.0f,
                                          height,
                                          height);
        }
    }
    else if (numberOfCircleViews == 1){
        BMYCircleView *circleView = self.circleViews[0];
        circleView.frame = CGRectMake(ceilf((width / 2) - (height / 2)),
                                      0.0f,
                                      height,
                                      height);
    }
}

@end

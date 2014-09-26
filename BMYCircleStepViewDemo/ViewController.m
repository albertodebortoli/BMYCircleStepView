//
//  ViewController.m
//  BMYCircleStepViewDemo
//
//  Created by Alberto De Bortoli on 24/09/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "ViewController.h"

#import "BMYCircleView.h"
#import "BMYCircleStepView.h"

#import "BMYCircleStepViewDemo-Swift.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet CircleView *circleView1;
@property (nonatomic, weak) IBOutlet CircleView *circleView2;
@property (nonatomic, weak) IBOutlet BMYCircleView *circleView3;
@property (nonatomic, weak) IBOutlet BMYCircleView *circleView4;
@property (nonatomic, weak) IBOutlet CircleStepView *circleStepView1;
@property (nonatomic, weak) IBOutlet CircleStepView *circleStepView2;
@property (nonatomic, weak) IBOutlet BMYCircleStepView *circleStepView3;
@property (nonatomic, weak) IBOutlet BMYCircleStepView *circleStepView4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setup CircleViews
    self.circleView1.value = @"!";
    self.circleView1.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleView1.selectedColor = [UIColor redColor];
    self.circleView1.unselectedColor = [UIColor greenColor];
    self.circleView1.borderThickness = 4.0;
    self.circleView1.selected = false;
    
    self.circleView2.value = @"!";
    self.circleView2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleView2.selectedColor = [UIColor redColor];
    self.circleView2.unselectedColor = [UIColor greenColor];
    self.circleView2.borderThickness = 2.0;
    self.circleView2.selected = true;
    
    self.circleView3.value = @"!";
    self.circleView3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleView3.selectedColor = [UIColor redColor];
    self.circleView3.unselectedColor = [UIColor greenColor];
    self.circleView3.borderThickness = 2.0f;
    self.circleView3.selected = NO;
    
    self.circleView4.value = @"!";
    self.circleView4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleView4.selectedColor = [UIColor redColor];
    self.circleView4.unselectedColor = [UIColor greenColor];
    self.circleView4.borderThickness = 2.0f;
    self.circleView4.selected = YES;
    
    // Setup CircleStepViews
    self.circleStepView1.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleStepView1.selectedColor = [UIColor darkGrayColor];
    self.circleStepView1.unselectedColor = [UIColor lightGrayColor];
    self.circleStepView1.borderThickness = 2.0f;
    self.circleStepView1.numberOfSteps = 3;
    self.circleStepView1.currentStep = 1;
    
    self.circleStepView2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleStepView2.selectedColor = [UIColor darkGrayColor];
    self.circleStepView2.unselectedColor = [UIColor lightGrayColor];
    self.circleStepView2.borderThickness = 5.0f;
    self.circleStepView2.numberOfSteps = 3;
    self.circleStepView2.currentStep = 2;
    
    self.circleStepView3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleStepView3.selectedColor = [UIColor darkGrayColor];
    self.circleStepView3.unselectedColor = [UIColor lightGrayColor];
    self.circleStepView3.borderThickness = 4.0f;
    self.circleStepView3.numberOfSteps = 4;
    self.circleStepView3.currentStep = 2;
    
    self.circleStepView4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:24.0];
    self.circleStepView4.selectedColor = [UIColor darkGrayColor];
    self.circleStepView4.unselectedColor = [UIColor lightGrayColor];
    self.circleStepView4.borderThickness = 2.0f;
    self.circleStepView4.numberOfSteps = 6;
    self.circleStepView4.currentStep = 2;
}

@end

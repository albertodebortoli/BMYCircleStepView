#BMYCircleStepView

Simple view showing the steps of a flow as used in the [Beamly iOS app](https://itunes.apple.com/gb/app/beamly-tv-by-zeebox/id454689266?mt=8).

![1](https://img-i.zeebox.com/images/ugc/uu7c909116-f781-4222-ba26-f9f6d74f5f0a/778a8fe6-66da-4daa-858a-76e9be8464fe.png)

![2](https://img-i.zeebox.com/images/ugc/uu7c909116-f781-4222-ba26-f9f6d74f5f0a/c12ab2b5-5cf2-4ebf-9283-8d61ad152909.png)

Try out the included demo project or just run `pod try BMYCircleStepView` to give it a try.

Simple usage:

- copy all the classes in the `BMYCircleStepView` folder into your project or install via CocoaPods adding the following line to your Podfile

```
pod "BMYCircleStepView"
```

- import `BMYCircleStepView.h` in your class
- crete instances of `BMYCircleStepView` (Objective-C) or `CircleStepView` (Swift) like so:

``` objective-c
BMYCircleStepView *circleStepView = [BMYCircleStepView alloc] initWithFrame:...];
circleStepView.font = ...; // optional
circleStepView.selectedColor = [UIColor darkGrayColor];
circleStepView.unselectedColor = [UIColor lightGrayColor];
circleStepView.borderThickness = 2.0f;
circleStepView.numberOfSteps = 3;
circleStepView.currentStep = 2;
```

```swift
var circleStepView = CircleStepView(frame: CGRectZero)
circleStepView.font = ... // optional
circleStepView.selectedColor = UIColor.darkGrayColor()
circleStepView.unselectedColor = UIColor.lightGrayColor()
circleStepView.borderThickness = 2.0;
circleStepView.numberOfSteps = 3;
circleStepView.currentStep = 2;
```

It's possible to use also the `BMYCircleView`/`CircleView` on its own.

#Licensing

This project is licensed under the [BSD 3-Clause license](http://opensource.org/licenses/BSD-3-Clause)

#Contributions

Note that we are not accepting pull requests at this time.

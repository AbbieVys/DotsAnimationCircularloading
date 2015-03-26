# DotsAnimationCircularloading
A project which helps to add a circular dot animation loading view
Create a sample project
Import DotCirclekit to your project
Add #import "CLSpinKitView.h" to your view controller
For using the loading use the following code
CLSpinKitView *spinner = [[CLSpinKitView alloc] initWithStyle:style color:[UIColor redColor]];
spinner.frame = CGRectMake(50, 150, 300, 300);
[spinner startAnimating];
self.panel = [[UIView alloc] initWithFrame:CGRectOffset(screenBounds, screenWidth * self.numberOfSpinners, 0.0)];
self.panel.backgroundColor = [UIColor whiteColor];
[self.panel addSubview:spinner];

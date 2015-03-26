//
// RTSpinKitCircleAnimation.m
// SpinKit
//



#import "CLDotsCircleAnimation.h"
#include <tgmath.h>
#include <QuartzCore/QuartzCore.h>
#include <UIKit/UIKit.h>

@implementation CLDotsCircleAnimation

-(void)setupSpinKitAnimationInLayer:(CALayer*)layer withSize:(CGSize)size color:(UIColor*)color
{
    NSTimeInterval beginTime = CACurrentMediaTime();
//    UILabel *loadingLabel = [[UILabel alloc]init];
//    loadingLabel.frame = CGRectMake(50, 100, 150, 150);
//    loadingLabel.text = @"Loading";
//    loadingLabel.textColor = [UIColor blueColor];
//    CALayer *loading = [CALayer layer];
//    loading.frame = CGRectMake(30, 30, 80, 80);
//    loading.contents = (id)[UIImage imageNamed:@"loading.png"].CGImage;
//    [layer addSublayer:loading];
    
    
    
    NSLog(@"width of size %f",size.width);

    //CGFloat radius = size.width/2;
    CGFloat radius = 80;
    CGFloat circleSize = size.width / 2 ;

    for (NSInteger i=0; i < 8; i+=1) {
        CALayer *circle = [CALayer layer];
  
        CGFloat angle = i * M_PI_4;
        CGFloat x = radius + sinf(angle) * radius;
        CGFloat y = radius - cosf(angle) * radius;
        circle.frame = CGRectMake(x, y, circleSize, circleSize);
        circle.backgroundColor = color.CGColor;
        circle.anchorPoint = CGPointMake(0.5, 0.5);
        circle.cornerRadius = CGRectGetHeight(circle.bounds) * 0.5;
        circle.transform = CATransform3DMakeScale(0.0, 0.0, 0.0);
  
        CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
        anim.removedOnCompletion = NO;
        anim.repeatCount = HUGE_VALF;
        anim.duration = 1.0;
        anim.beginTime = beginTime + (0.125 * i);
        anim.keyTimes = @[@(0.0), @(0.5), @(1.0)];
  
        anim.timingFunctions = @[
            [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
            [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
            [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]
        ];

        anim.values = @[
            [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.0, 0.0, 0.0)],
            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 0.0)],
            [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.0, 0.0, 0.0)]
        ];

        [layer addSublayer:circle];
        [circle addAnimation:anim forKey:@"spinkit-anim"];
    }
}

@end

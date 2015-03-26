//
// RTSpinKitUtils.m
// SpinKit

#import "CLDotKitUtils.h"

// Animations

#import "CLDotsCircleAnimation.h"


CATransform3D RTSpinKit3DRotationWithPerspective(CGFloat perspective,
                                                 CGFloat angle,
                                                 CGFloat x,
                                                 CGFloat y,
                                                 CGFloat z)
{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = perspective;
    return CATransform3DRotate(transform, angle, x, y, z);
}

NSObject<CLDotKitAnimating>* RTSpinKitAnimationFromStyle(RTSpinKitViewStyle style)
{
    switch (style) {
            
            
        case RTSpinKitViewStyleCircle:
            return [[CLDotsCircleAnimation alloc] init];
            
            
        default:
            NSCAssert(NO, @"Unicorns exist");
    }
    return nil;
}

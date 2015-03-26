//
// RTSpinKitUtils.h
// SpinKit

#import <Foundation/Foundation.h>
#import "CLSpinKitView.h"
#import "CLDotKitAnimating.h"

CATransform3D RTSpinKit3DRotationWithPerspective(CGFloat perspective, CGFloat angle, CGFloat x, CGFloat y, CGFloat z);
NSObject<CLDotKitAnimating>* RTSpinKitAnimationFromStyle(RTSpinKitViewStyle style);

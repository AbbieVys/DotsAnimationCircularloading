//
// RTSpinKitAnimating.h
// SpinKit

#import <Foundation/Foundation.h>
#include <QuartzCore/QuartzCore.h>
#include <UIKit/UIKit.h>

@protocol  CLDotKitAnimating<NSObject>
-(void)setupSpinKitAnimationInLayer:(CALayer*)layer withSize:(CGSize)size color:(UIColor*)color;
@end

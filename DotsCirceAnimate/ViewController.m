//
//  ViewController.m
//  DotsCirceAnimate
//
//  Created by Abbie on 3/25/15.
//  Copyright (c) 2015 Abbie. All rights reserved.
//

#import "ViewController.h"
#import "CLSpinKitView.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger numberOfSpinners;
@property (nonatomic,strong) UIView *panel;
@end

@implementation ViewController


-(void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.numberOfSpinners = 0;
    
    
    [self insertSpinnerOfStyle: RTSpinKitViewStyleCircle
               backgroundColor:[UIColor whiteColor]
                         label:@"Loading"];
}


-(void)insertSpinnerOfStyle:(RTSpinKitViewStyle)style
            backgroundColor:(UIColor*)backgroundColor
                      label:(NSString *)labelString
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    // CGFloat screenWidth = CGRectGetWidth(screenBounds);
    CGFloat screenWidth = CGRectGetWidth(screenBounds);
    
    CLSpinKitView *spinner = [[CLSpinKitView alloc] initWithStyle:style color:[UIColor redColor]];
    
    //spinner.center = CGPointMake(CGRectGetMidX(screenBounds), CGRectGetMidY(screenBounds));
    spinner.frame = CGRectMake(50, 150, 300, 300);
    [spinner startAnimating];
    
    self.panel = [[UIView alloc] initWithFrame:CGRectOffset(screenBounds, screenWidth * self.numberOfSpinners, 0.0)];
    self.panel.backgroundColor = [UIColor whiteColor];
    [self.panel addSubview:spinner];
    self.numberOfSpinners += 1;
    NSLog(@"spinnersNumber %ld",(long)self.numberOfSpinners);
    
    [self addSubviews];
}

-(void)addSubviews
{
    [self.view addSubview:self.panel];
}

@end

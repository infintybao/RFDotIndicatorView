//
//  RFDotIndicatorView+MJ.m
//  HaoShiHuo
//
//  Created by 包捷勇 on 16/3/29.
//  Copyright © 2016年 paris. All rights reserved.
//

#import "RFDotIndicatorView+MJ.h"

@implementation RFDotIndicatorView (MJ)

+ (void)showToView:(UIView *)view
{
    RFDotIndicatorView *darkDotIndicatorView = [[RFDotIndicatorView alloc] initWithFrame:CGRectMake(0, Main_Screen_Height / 2 - 50, Main_Screen_Width, 50) dotStyle:RFDotIndicatorViewStyleCircle dotColor:[UIColor colorWithWhite:0.5 alpha:1.0] dotSize:CGSizeMake(10, 10)];
    darkDotIndicatorView.backgroundColor = [UIColor clearColor];
    [darkDotIndicatorView startAnimating];
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    [view addSubview:darkDotIndicatorView];

}

+ (void)hideToView:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    RFDotIndicatorView *hub = [self HUDForView:view];
    [hub removeFromSuperview];
}

+ (instancetype)HUDForView:(UIView *)view {
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:self]) {
            return (RFDotIndicatorView *)subview;
        }
    }
    return nil;
}

@end

//
//  RFDotIndicatorView.h
//  HaoShiHuo
//
//  Created by 包捷勇 on 16/3/28.
//  Copyright © 2016年 paris. All rights reserved.
//  加载进度条

#import <UIKit/UIKit.h>
// MainScreen Height&Width
#define Main_Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width       [[UIScreen mainScreen] bounds].size.width

typedef NS_ENUM(NSInteger, RFDotIndicatorViewStyle)
{
    RFDotIndicatorViewStyleSquare,
    RFDotIndicatorViewStyleRound,
    RFDotIndicatorViewStyleCircle
};

@interface RFDotIndicatorView : UIView

@property (nonatomic, assign) BOOL hidesWhenStopped;

- (id)initWithFrame:(CGRect)frame
           dotStyle:(RFDotIndicatorViewStyle)style
           dotColor:(UIColor *)dotColor
            dotSize:(CGSize)dotSize;

- (void)startAnimating;
- (void)stopAnimating;
- (BOOL)isAnimating;

@end

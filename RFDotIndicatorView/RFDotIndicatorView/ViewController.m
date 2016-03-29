//
//  ViewController.m
//  RFDotIndicatorView
//
//  Created by 包捷勇 on 16/3/29.
//  Copyright © 2016年 包捷勇. All rights reserved.
//

#import "ViewController.h"
#import "RFDotIndicatorView+MJ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [RFDotIndicatorView showToView:self.view];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [RFDotIndicatorView hideToView:self.view];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

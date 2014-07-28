//
//  HMAdViewController.m
//  原创网易新闻
//
//  Created by apple on 14-7-28.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMAdViewController.h"
#import "HMMainViewController.h"

@interface HMAdViewController ()

@end

@implementation HMAdViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.背景图片
    UIImageView *bg = [[UIImageView alloc] init];
    bg.image = [UIImage imageNamed:@"Default"];
    bg.frame = self.view.bounds;
    [self.view addSubview:bg];
    
    // 2.广告图片(真实的广告图片应该要先下载广告图片)
    UIImageView *ad = [[UIImageView alloc] init];
    ad.image = [UIImage imageNamed:@"ad"];
    ad.width = 280;
    ad.height = 300;
    ad.centerX = self.view.width * 0.5;
    ad.y = 60;
    [self.view addSubview:ad];
    
    // 3.2s后调到下一个主界面
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        window.rootViewController = [storyboard instantiateViewControllerWithIdentifier:@"Main"];
    });
}

@end

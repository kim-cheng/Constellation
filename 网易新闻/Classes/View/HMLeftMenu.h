//
//  HMLeftMenu.h
//  网易新闻
//
//  Created by apple on 14-7-25.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HMLeftMenu;

@protocol HMLeftMenuDelegate <NSObject>
@optional
- (void)leftMenu:(HMLeftMenu *)menu didSelectedButtonFromIndex:(int)fromIndex toIndex:(int)toIndex;
@end

@interface HMLeftMenu : UIView
@property (nonatomic, weak) id<HMLeftMenuDelegate> delegate;
@end

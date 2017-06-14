//
//  UISegmentedControl+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/10.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISegmentedControl (HHThemeKit)

- (void)hh_setImage:(NSString *)imageKey forSegmentAtIndex:(NSUInteger)segment;
- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (void)hh_setDividerImage:(NSString *)dividerImageKey forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics;

@end

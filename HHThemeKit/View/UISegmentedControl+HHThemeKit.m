//
//  UISegmentedControl+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/10.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import "UISegmentedControl+HHThemeKit.h"

@implementation UISegmentedControl (HHThemeKit)

- (void)hh_setImage:(NSString *)imageKey forSegmentAtIndex:(NSUInteger)segment{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setImage:forSegmentAtIndex:) state:segment];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forState:barMetrics:) state:state barMetrics:barMetrics];
}

- (void)hh_setDividerImage:(NSString *)dividerImageKey forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:dividerImageKey type:HHThemeUnitValueType_Img action:@selector(setDividerImage:forLeftSegmentState:rightSegmentState:) state:leftState barMetrics:rightState style:barMetrics];
}

@end

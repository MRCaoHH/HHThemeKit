//
//  UIBarButtonItem+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIBarButtonItem+HHThemeKit.h"

@implementation UIBarButtonItem (HHThemeKit)

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forState:barMetrics:) state:state barMetrics:barMetrics];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forState:style:barMetrics:) state:state barMetrics:barMetrics style:style];
}

- (void)hh_setBackButtonBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackButtonBackgroundImage:forState:barMetrics:) state:state barMetrics:barMetrics];
}

@end

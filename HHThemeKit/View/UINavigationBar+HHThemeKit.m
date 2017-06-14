//
//  UINavigationBar+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UINavigationBar+HHThemeKit.h"

@implementation UINavigationBar (HHThemeKit)

- (void)hh_setShadowImage:(NSString *)shadowImageKey{
    [self hh_settingWithKey:shadowImageKey type:HHThemeUnitValueType_Img action:@selector(setShadowImage:)];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forBarMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forBarMetrics:) barMetrics:barMetrics];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forBarMetrics:) barPosition:barPosition barMetrics:barMetrics];
}

@end

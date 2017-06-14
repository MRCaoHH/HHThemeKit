//
//  UITabBar+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UITabBar+HHThemeKit.h"

@implementation UITabBar (HHThemeKit)

- (void)hh_setBarTintColor:(NSString *)barTintColor{
    [self hh_settingWithKey:barTintColor type:HHThemeUnitValueType_Color action:@selector(setBarTintColor:)];
}

- (void)hh_setShadowImage:(NSString *)shadowImage{
    [self hh_settingWithKey:shadowImage type:HHThemeUnitValueType_Img action:@selector(setShadowImage:)];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImage{
    [self hh_settingWithKey:backgroundImage type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:)];
}

- (void)hh_setSelectionIndicatorImage:(NSString *)selectionIndicatorImage{
    [self hh_settingWithKey:selectionIndicatorImage type:HHThemeUnitValueType_Img action:@selector(setSelectionIndicatorImage:)];
}

@end

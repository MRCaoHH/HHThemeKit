//
//  UISwitch+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UISwitch+HHThemeKit.h"

@implementation UISwitch (HHThemeKit)

- (void)hh_setOnImage:(NSString *)onImageKey{
    [self hh_settingWithKey:onImageKey type:HHThemeUnitValueType_Img action:@selector(setOnImage:)];
}

- (void)hh_setOffImage:(NSString *)offImageKey{
    [self hh_settingWithKey:offImageKey type:HHThemeUnitValueType_Img action:@selector(setOffImage:)];
}

- (void)hh_setOnTintColor:(NSString *)onTintColorKey{
    [self hh_settingWithKey:onTintColorKey type:HHThemeUnitValueType_Color action:@selector(setOnTintColor:)];
}

- (void)hh_setThumbTintColor:(NSString *)thumbTintColorKey{
    [self hh_settingWithKey:thumbTintColorKey type:HHThemeUnitValueType_Color action:@selector(setThumbTintColor:)];
}

- (void)hh_setTintColor:(NSString *)tintColorKey{
    [self hh_settingWithKey:tintColorKey type:HHThemeUnitValueType_Color action:@selector(setTintColor:)];
}

@end

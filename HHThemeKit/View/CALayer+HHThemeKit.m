//
//  CALayer+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "CALayer+HHThemeKit.h"

@implementation CALayer (HHThemeKit)

- (void)hh_setShadowColor:(NSString *)shadowColorKey{
     [self hh_settingWithKey:shadowColorKey type:HHThemeUnitValueType_ColorRef action:@selector(setShadowColor:)];
}

- (void)hh_setBackgroundColor:(NSString *)backgroundColorKey{
    [self hh_settingWithKey:backgroundColorKey type:HHThemeUnitValueType_ColorRef action:@selector(setBackgroundColor:)];
}

- (void)hh_setBorderColor:(NSString *)borderColorKey{
    [self hh_settingWithKey:borderColorKey type:HHThemeUnitValueType_ColorRef action:@selector(setBorderColor:)];
}

@end

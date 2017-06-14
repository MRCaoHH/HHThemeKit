//
//  UISearchBar+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UISearchBar+HHThemeKit.h"

@implementation UISearchBar (HHThemeKit)

- (void)hh_setBarTintColor:(NSString *)barTintColorKey{
    [self hh_settingWithKey:barTintColorKey type:HHThemeUnitValueType_Color action:@selector(setBarTintColor:)];
}

- (void)hh_setBackgroundImage:(NSString *)backgroundImageKey{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:)];
}

- (void)hh_setScopeBarBackgroundImage:(NSString *)scopeBarBackgroundImageKey{
    [self hh_settingWithKey:scopeBarBackgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setScopeBarBackgroundImage:)];
}

- (void)hh_setScopeBarButtonBackgroundImage:(NSString *)backgroundImageKey forState:(UIControlState)state{
    [self hh_settingWithKey:backgroundImageKey type:HHThemeUnitValueType_Img action:@selector(setScopeBarButtonBackgroundImage:forState:) state:state];
}
@end

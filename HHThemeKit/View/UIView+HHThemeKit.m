//
//  UIView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIView+HHThemeKit.h"

@implementation UIView (HHThemeKit)

-(void)hh_setBackgroundColor:(NSString *)backgroundColorKey{
    [self hh_settingWithKey:backgroundColorKey type:HHThemeUnitValueType_Color action:@selector(setBackgroundColor:)];
}

-(void)hh_setTintColor:(NSString *)tintColorKey{
    [self hh_settingWithKey:tintColorKey type:HHThemeUnitValueType_Color action:@selector(setTintColor:)];
}
@end

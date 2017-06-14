//
//  UITextView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UITextView+HHThemeKit.h"

@implementation UITextView (HHThemeKit)

-(void)hh_setTextColor:(NSString *)textColorKey{
    [self hh_settingWithKey:textColorKey type:HHThemeUnitValueType_Color action:@selector(setTextColor:)];
}

-(void)hh_setFont:(NSString *)fontKey{
    [self hh_settingWithKey:fontKey type:HHThemeUnitValueType_Font action:@selector(setFont:)];
}

@end

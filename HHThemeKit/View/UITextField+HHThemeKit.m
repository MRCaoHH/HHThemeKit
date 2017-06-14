//
//  UITextField+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UITextField+HHThemeKit.h"

@implementation UITextField (HHThemeKit)

- (void)hh_setTextColor:(NSString *)textColor{
    [self hh_settingWithKey:textColor type:HHThemeUnitValueType_Color action:@selector(setTextColor:)];
}

- (void)hh_setFont:(NSString *)font{
    [self hh_settingWithKey:font type:HHThemeUnitValueType_Font action:@selector(setFont:)];
}
@end

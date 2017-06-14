//
//  UIActivityIndicatorView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/10.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import "UIActivityIndicatorView+HHThemeKit.h"

@implementation UIActivityIndicatorView (HHThemeKit)

- (void)hh_setColor:(NSString *)colorKey{
    [self hh_settingWithKey:colorKey type:HHThemeUnitValueType_Color action:@selector(setColor:)];
}

@end

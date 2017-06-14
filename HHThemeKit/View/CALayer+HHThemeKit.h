//
//  CALayer+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (HHThemeKit)

- (void)hh_setShadowColor:(NSString *)shadowColorKey;
- (void)hh_setBackgroundColor:(NSString *)backgroundColorKey;
- (void)hh_setBorderColor:(NSString *)borderColorKey;

@end

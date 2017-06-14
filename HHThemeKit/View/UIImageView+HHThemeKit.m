//
//  UIImageView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIImageView+HHThemeKit.h"

@implementation UIImageView (HHThemeKit)

- (void)hh_setImage:(NSString *)imageKey{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setImage:)];
}

- (void)hh_setHighlightedImage:(NSString *)highlightedImageKey{
    [self hh_settingWithKey:highlightedImageKey type:HHThemeUnitValueType_Img action:@selector(setHighlightedImage:)];
}

@end

//
//  UIButton+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (HHThemeKit)

- (void)hh_setTitleColor:(NSString *)colorKey forState:(UIControlState)state;

- (void)hh_setBackgroundImage:(NSString *)imageKey forState:(UIControlState)state;

-(void)hh_setImage:(NSString *)imageKey forState:(UIControlState)state;

@end

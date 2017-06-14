//
//  UIButton+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIButton+HHThemeKit.h"

@implementation UIButton (HHThemeKit)

-(void)hh_setTitleColor:(NSString *)colorKey forState:(UIControlState)state{
    [self hh_settingWithKey:colorKey type:HHThemeUnitValueType_Color action:@selector(setTitleColor:forState:) state:state];
}


- (void)hh_setBackgroundImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setBackgroundImage:forState:) state:state];
}

- (void)hh_setImage:(NSString *)imageKey forState:(UIControlState)state{
    [self hh_settingWithKey:imageKey type:HHThemeUnitValueType_Img action:@selector(setImage:forState:) state:state];
    
}

@end

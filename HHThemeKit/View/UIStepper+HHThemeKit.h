//
//  UIStepper+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/10.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStepper (HHThemeKit)
- (void)hh_setBackgroundImage:(NSString *)imageKey forState:(UIControlState)state;
- (void)hh_setDividerImage:(NSString*)imageKey forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (void)hh_setIncrementImage:(NSString *)imageKey forState:(UIControlState)state;
- (void)hh_setDecrementImage:(NSString *)imageKey forState:(UIControlState)state;
@end

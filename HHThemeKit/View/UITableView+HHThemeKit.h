//
//  UITableView+HHThemeKit.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (HHThemeKit)
- (void)hh_setSeparatorColor:(NSString *)separatorColor;
- (void)hh_setSectionIndexColor:(NSString *)sectionIndexColor;
- (void)hh_setSectionIndexTrackingBackgroundColor:(NSString *)sectionIndexTrackingBackgroundColor;
- (void)hh_setSectionIndexBackgroundColor:(NSString *)sectionIndexBackgroundColor;
@end

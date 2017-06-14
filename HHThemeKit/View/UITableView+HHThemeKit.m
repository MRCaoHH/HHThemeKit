//
//  UITableView+HHThemeKit.m
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UITableView+HHThemeKit.h"

@implementation UITableView (HHThemeKit)

- (void)hh_setSeparatorColor:(NSString *)separatorColor{
    [self hh_settingWithKey:separatorColor type:HHThemeUnitValueType_Color action:@selector(setSeparatorColor:)];
}

- (void)hh_setSectionIndexColor:(NSString *)sectionIndexColor{
    [self hh_settingWithKey:sectionIndexColor type:HHThemeUnitValueType_Color action:@selector(setSectionIndexColor:)];
}

- (void)hh_setSectionIndexTrackingBackgroundColor:(NSString *)sectionIndexTrackingBackgroundColor{
    [self hh_settingWithKey:sectionIndexTrackingBackgroundColor type:HHThemeUnitValueType_Color action:@selector(setSectionIndexTrackingBackgroundColor:)];
}

- (void)hh_setSectionIndexBackgroundColor:(NSString *)sectionIndexBackgroundColor{
    [self hh_settingWithKey:sectionIndexBackgroundColor type:HHThemeUnitValueType_Color action:@selector(setSectionIndexBackgroundColor:)];
}

@end

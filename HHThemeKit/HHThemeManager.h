//
//  HHThemeManager.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/27.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HHThemeManager : NSObject
@property (nonatomic, readonly) NSString *filePath;
@property (nonatomic, readonly) NSDictionary <NSString*,id> *themeDic;

+ (HHThemeManager *)manager;

- (BOOL)loadThemeWithFileName:(NSString *)fileName;
- (BOOL)loadThemeWithFilePath:(NSString *)filePath;

- (UIColor *)colorWithKey:(NSString *)key;
- (CGColorRef)colorRefWithKey:(NSString *)key;
- (UIImage *)imgWithKey:(NSString *)key;
- (UIFont *)fontWithKey:(NSString *)key;
@end

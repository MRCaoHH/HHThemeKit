//
//  HHNoticeManager.h
//  HHThemeKit
//
//  Created by caohuihui on 16/7/21.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^HHNoticeManagerBlock)();

@interface HHNoticeManager : NSObject

/**
 初始化

 @param initBlock 初始化block
 @param deallocBlock 释放时候调用的block
 @return HHNoticeManager
 */
-(instancetype)init:(HHNoticeManagerBlock)initBlock deallocBlock:(HHNoticeManagerBlock)deallocBlock;

@end

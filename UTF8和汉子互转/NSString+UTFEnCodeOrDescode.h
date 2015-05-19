//
//  NSString+UTFEnCodeOrDescode.h
//  SNWF
//
//  Created by MJ on 15/4/30.
//  Copyright (c) 2015年 TJ. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  UTF8与汉字进行互相转换
 */
@interface NSString (UTFEnCodeOrDescode)
/**
 *  返回UTF8编码
 *
 *  @param formatterString 要格式化的汉字
 *
 *  @return 格式化后的UTF8编码
 */
+ (NSString *)UTFEnCodeString:(NSString *)formatterString;
/**
 *  返回汉字
 *
 *  @param formatterCodeString  要格式化的编码
 *
 *  @return 返回汉字字符串
 */
+ (NSString *)UTFDesCodeString:(NSString *)formatterCodeString;

@end

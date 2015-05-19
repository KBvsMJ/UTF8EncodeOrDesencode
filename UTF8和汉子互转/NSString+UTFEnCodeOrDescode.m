//
//  NSString+UTFEnCodeOrDescode.m
//  SNWF
//
//  Created by MJ on 15/4/30.
//  Copyright (c) 2015年 TJ. All rights reserved.
//

#import "NSString+UTFEnCodeOrDescode.h"

@implementation NSString (UTFEnCodeOrDescode)
/**
 *  返回UTF8编码
 *
 *  @param formatterString 要格式化的汉字
 *
 *  @return 格式化后的UTF8编码
 */
+ (NSString *)UTFEnCodeString:(NSString *)formatterString
{
    
    NSString *resultEncode = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                             (CFStringRef)formatterString,
                                                                                             NULL,CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                             kCFStringEncodingUTF8));
    return resultEncode;
}
/**
 *  返回汉字
 *
 *  @param formatterCodeString  要格式化的编码
 *
 *  @return 返回汉字字符串
 */
+ (NSString *)UTFDesCodeString:(NSString *)formatterCodeString
{
    NSString *resultDescode = (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault,
                                                                                                             (CFStringRef)formatterCodeString,   CFSTR(""), kCFStringEncodingUTF8));
    return resultDescode;

}
@end

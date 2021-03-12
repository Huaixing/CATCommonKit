//
//  CATDateUtils.m
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import "CATDateUtils.h"

@implementation CATDateUtils

/// 日期格式
/// @param format 格式
+ (NSDateFormatter *)dateFormatterWithFormat:(NSString *)format {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return dateFormat;
}

/// 将字符串”2021-03-02 12:00:00“转化成date
/// @param dateString 时间
/// @return 日期
+ (NSDate *)dateFromDateString:(NSString *)dateString {
    NSDateFormatter *dateFormat = [self dateFormatterWithFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    return [dateFormat dateFromString:dateString];
}

/// 将字符串时间戳转化成date
/// 单位s
/// @param timestampString 字符串时间戳
/// @return 日期
+ (NSDate *)dateFromTimestampString:(NSString *)timestampString {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestampString.longLongValue];
    return date;
}

/// 将时间戳转化成date
/// 单位s
/// @param timestamp 时间戳
/// @return 日期
+ (NSDate *)dateFromTimestamp:(NSTimeInterval)timestamp {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    return date;
}

@end

//
//  CATDateUtils.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CATDateUtils : NSObject

/// 日期格式
/// @param format 格式
+ (NSDateFormatter *)dateFormatterWithFormat:(NSString *)format;

/// 将字符串”2021-03-02 12:00:00“转化成date
/// 精确到：s
/// @param dateString 时间
/// @return 日期
+ (NSDate *)dateFromDateString:(NSString *)dateString;

/// 将字符串时间戳转化成date
/// 单位：s
/// @param timestampString 字符串时间戳
/// @return 日期
+ (NSDate *)dateFromTimestampString:(NSString *)timestampString;

/// 将时间戳转化成date
/// 单位：s
/// @param timestamp 时间戳
/// @return 日期
+ (NSDate *)dateFromTimestamp:(NSTimeInterval)timestamp;


@end

NS_ASSUME_NONNULL_END

//
//  NSDate+CAT.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (CAT)

/// 将字符串日期”2021-03-02 12:00:00“转化成NSDate
/// yyyy-MM-dd hh:mm:ss
/// @param dateString 时间
/// @return 日期。转化成的日期是零时区时间
+ (NSDate *)dateTimeFromDateString:(NSString *)dateString;
/// 将字符串日期”2021-03-02“转化成NSDate
/// yyyy-MM-dd
/// @param dateString 时间
/// @return 日期。转化成的日期是零时区时间
+ (NSDate *)dateFromDateString:(NSString *)dateString;

/// date is today
- (BOOL)isToday;


/// 两日期相差多少个完整自然日（一个自然日24h）
/// 计算方式：date - self
/// @param date other date
/// @return interval days
- (NSInteger)intervalCalendarDaysToDate:(NSDate *)date;


/// 两日期相差多少天（非自然日）
/// 计算方式：date - self
/// @param date other date
/// @return interval days
- (NSInteger)intervalDaysToDate:(NSDate *)date;

/// 当前日期的开始时间（00:00:00）
- (NSDate *)beginDate;
/// 当前日期的末尾时间（23:59:59）
- (NSDate *)endDate;

/// 日期转化成字符串
/// @param dateFormat 日期字符串样式。
/// @return 字符串日期。转化成的字符串时间是当前时区的
- (NSString *)dateTimeStringFromDateFormat:(NSString *)dateFormat;



@end

NS_ASSUME_NONNULL_END

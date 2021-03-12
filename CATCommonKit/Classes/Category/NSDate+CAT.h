//
//  NSDate+CAT.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CATDateStyle) {
    /// yyyy-MM-dd HH:mm:ss
    CATDateFullDateTimeStyle,
    /// yyyy-MM-dd
    CATDateShortDateStyle,
    /// HH:mm:ss
    CATDateShortTimeStyle,
};

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (CAT)


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
/// yyyy-MM-dd HH:mm:ss
/// @param style 日期字符串样式
- (NSString *)dateTimeStringWithStyle:(CATDateStyle)style;

@end

NS_ASSUME_NONNULL_END

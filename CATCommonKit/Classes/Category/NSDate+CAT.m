//
//  NSDate+CAT.m
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import "NSDate+CAT.h"
#import "CATDateUtils.h"

@implementation NSDate (CAT)

/// 将字符串日期”2021-03-02 12:00:00“转化成NSDate
/// yyyy-MM-dd hh:mm:ss
/// @param dateString 时间
/// @return 日期。转化成的日期是零时区时间
+ (NSDate *)dateTimeFromDateString:(NSString *)dateString {
    NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
    ///dateFormat没有指定时区（Z），默认是系统所在时区
    [fmt setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    /// 最终转成的date都是零时区所在的时间
    return [fmt dateFromString:dateString];
}
/// 将字符串日期”2021-03-02“转化成NSDate
/// yyyy-MM-dd
/// @param dateString 时间
/// @return 日期。转化成的日期是零时区时间
+ (NSDate *)dateFromDateString:(NSString *)dateString {
    NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
    ///dateFormat没有指定时区（Z），默认是系统所在时区
    [fmt setDateFormat:@"yyyy-MM-dd"];
    /// 最终转成的date都是零时区所在的时间
    return [fmt dateFromString:dateString];
}

- (BOOL)isToday {
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return NO;
    }
    NSDateComponents *otherDay = [[NSCalendar currentCalendar] components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:self];
    NSDateComponents *today = [[NSCalendar currentCalendar] components:NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
    
    if([today day] == [otherDay day] &&
       [today month] == [otherDay month] &&
       [today year] == [otherDay year] &&
       [today era] == [otherDay era]) {
        // 是今天
        return YES;
    }
    return NO;
}


/// 两日期相差多少个完整自然日（一个自然日24h）
/// 计算方式：date - self
/// @param date other date
/// @return interval days
- (NSInteger)intervalCalendarDaysToDate:(NSDate *)date {
    if (date == nil || ![date isKindOfClass:[NSDate class]]) {
        return NSNotFound;
    }
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return NSNotFound;
    }
    
    NSDateComponents *cmp = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:self toDate:date options:0];
    return cmp.day;
}

/// 两日期相差多少天（非自然日）
/// 计算方式：date - self
/// @param date other date
/// @return interval days
- (NSInteger)intervalDaysToDate:(NSDate *)date {
    if (date == nil || ![date isKindOfClass:[NSDate class]]) {
        return NSNotFound;
    }
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return NSNotFound;
    }
    NSDate *begin = [self beginDate];
    NSDate *otherBegin = [date beginDate];
    NSDateComponents *cmp = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:begin toDate:otherBegin options:0];
    return cmp.day;
}


/// 当前日期的开始时间（00:00:00）
- (NSDate *)beginDate {
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return nil;
    }
    NSCalendarUnit flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents* parts = [[NSCalendar currentCalendar] components:flags fromDate:self];
    [parts setHour:0];
    [parts setMinute:0];
    [parts setSecond:0];
      
    return [[NSCalendar currentCalendar] dateFromComponents:parts];
}
/// 当前日期的末尾时间（23:59:59）
- (NSDate *)endDate {
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return nil;
    }
    NSCalendarUnit flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents* parts = [[NSCalendar currentCalendar] components:flags fromDate:self];
    [parts setHour:23];
    [parts setMinute:59];
    [parts setSecond:59];
      
    return [[NSCalendar currentCalendar] dateFromComponents:parts];
}




/// 日期转化成字符串
/// @param dateFormat 日期字符串样式。
/// @return 字符串日期。转化成的字符串时间是当前时区的
- (NSString *)dateTimeStringFromDateFormat:(NSString *)dateFormat {
    if (self == nil || ![self isKindOfClass:[NSDate class]]) {
        return nil;
    }
    
    NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
    fmt.timeZone = [NSTimeZone systemTimeZone];
    fmt.dateFormat = dateFormat;
    return [fmt stringFromDate:self];
}

@end

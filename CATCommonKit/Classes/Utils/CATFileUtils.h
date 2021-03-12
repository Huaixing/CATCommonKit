//
//  CATFileUtils.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/3/1.
//

#import <Foundation/Foundation.h>

@interface CATFileUtils : NSObject

/// UserDefault持久化方式
/// 主要封装了NSUSerDefault。在NSUSerDefault API之前做了一些数据有效性检测
/// UserDefault存储方式，只能存一些简单的标记（BOOL）、时间戳（NSNumber）
/// @param key <#key description#>
- (NSObject *)objectFromUserDefaultForKey:(NSString *)key;
- (void)setObjectToUserDefault:(NSObject *)object forKey:(NSString *)key;


@end

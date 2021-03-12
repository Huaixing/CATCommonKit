//
//  NSAttributedString+CATSize.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/2/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (CATSize)

/// 计算富文本在指定宽度中所占用的尺寸
/// 不限高
/// @param limitWidth 限制宽度
/// @return 富文本所在尺寸
- (CGSize)cat_sizeWithLimitWidth:(CGFloat)limitWidth;

@end

NS_ASSUME_NONNULL_END

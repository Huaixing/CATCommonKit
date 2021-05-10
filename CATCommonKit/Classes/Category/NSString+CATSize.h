//
//  NSString+CATSize.h
//  CATProject
//
//  Created by Shihuaixing on 2020/9/4.
//  Copyright © 2020 Shihuaixing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (CATSize)

/// 通过font、lineSpace将普通文本转化成富文本
/// @param font 字体
/// @param lineSpace 行间距
/// @return 富文本
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpace:(CGFloat)lineSpace;
/// 通过font、lineHeight将普通文本转化成富文本
/// @param font 字体
/// @param lineHeight 行高
/// @return 富文本
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineHeight:(CGFloat)lineHeight;

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算单行普通文本的宽度
/// @param font 字体
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font;

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算多行普通文本的宽度。无行间距
/// @param font 字体
/// @param limitWidth 限宽
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitWidth:(CGFloat)limitWidth;

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算多行普通文本的宽度。无行间距
/// @param font 字体
/// @param limitWidth 限宽
/// @param limitLines 限行
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitWidth:(CGFloat)limitWidth limitLines:(NSUInteger)limitLines;

@end



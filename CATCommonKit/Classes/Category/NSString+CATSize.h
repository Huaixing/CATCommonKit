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
/// @param limitSize 指定限制区域
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitSize:(CGSize)limitSize;

@end



//
//  NSString+CATSize.m
//  CATProject
//
//  Created by Shihuaixing on 2020/9/4.
//  Copyright © 2020 Shihuaixing. All rights reserved.
//

#import "NSString+CATSize.h"
#import "NSAttributedString+CATText.h"

@implementation NSString (CATSize)
/// 通过font、lineSpace将普通文本转化成富文本
/// @param font 字体
/// @param lineSpace 行间距
/// @return 富文本
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpace:(CGFloat)lineSpace {
    if (self.length == 0) {
        return [[NSMutableAttributedString alloc] init];
    }
    NSMutableAttributedString *attText = [[NSMutableAttributedString alloc] initWithString:self];
    attText.font = (font ? font : [UIFont systemFontOfSize:16]);
    attText.lineSpacing = lineSpace - (attText.font.lineHeight - attText.font.pointSize);
    attText.lineBreakMode = NSLineBreakByTruncatingTail;
    return attText;
}

/// 通过font、lineHeight将普通文本转化成富文本
/// @param font 字体
/// @param lineHeight 行高
/// @return 富文本
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineHeight:(CGFloat)lineHeight {
    if (self.length == 0) {
        return [[NSMutableAttributedString alloc] init];
    }
    NSMutableAttributedString *attText = [[NSMutableAttributedString alloc] initWithString:self];
    attText.font = font;
    attText.maximumLineHeight = lineHeight;
    attText.minimumLineHeight = lineHeight;
    attText.baselineOffset = [NSNumber numberWithDouble:(lineHeight - font.lineHeight) / 4];
    return attText;
}

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算单行普通文本的宽度
/// @param font 字体
/// @return 文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font {
    if (self.length == 0) {
        return CGSizeZero;
    }
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.text = self;
    [label sizeToFit];
    CGSize size = CGSizeMake(ceil(label.frame.size.width), ceil(label.frame.size.height));
    return size;
}

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算多行普通文本的宽度。无行间距
/// @param font 字体
/// @param limitWidth 限宽
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitWidth:(CGFloat)limitWidth {
    if (self.length == 0) {
        return CGSizeZero;
    }
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, limitWidth, 0)];
    label.numberOfLines = 0;
    label.font = font;
    label.text = self;
    [label sizeToFit];
    CGSize size = CGSizeMake(ceil(label.frame.size.width), ceil(label.frame.size.height));
    return size;
}

/// 普通文本在指定区域size中的所占尺寸
/// 主要用于计算多行普通文本的宽度。无行间距
/// @param font 字体
/// @param limitWidth 限宽
/// @param limitLines 限行
/// @return 普通文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitWidth:(CGFloat)limitWidth limitLines:(NSUInteger)limitLines {
    if (self.length == 0) {
        return CGSizeZero;
    }
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, limitWidth, 0)];
    label.numberOfLines = limitLines;
    label.font = font;
    label.text = self;
    [label sizeToFit];
    CGSize size = CGSizeMake(ceil(label.frame.size.width), ceil(label.frame.size.height));
    return size;
}
@end

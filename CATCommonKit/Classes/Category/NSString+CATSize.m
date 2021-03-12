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
    attText.lineSpacing = lineSpace;
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
/// @param limitSize 指定限制区域
/// @return 文本所占区域
- (CGSize)cat_sizeWithFont:(UIFont *)font limitSize:(CGSize)limitSize {
    if (self.length == 0) {
        return CGSizeZero;
    }
    if (limitSize.height <= 0) {
        limitSize.height = MAXFLOAT;
    }
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:font forKey:NSFontAttributeName];
    CGSize size = [self boundingRectWithSize:limitSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dict context:NULL].size;
    return size;
}

@end

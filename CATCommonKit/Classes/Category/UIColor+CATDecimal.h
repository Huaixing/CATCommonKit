//
//  UIColor+CATDecimal.h
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/12.
//

#import <UIKit/UIKit.h>


/// 进制对应的颜色值
@interface UIColor (CATDecimal)

/// rgb颜色值
/// @param red r
/// @param green g
/// @param blue b
/// @return color
+ (UIColor *)colorForRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

/// rgba颜色值
/// @param red r
/// @param green g
/// @param blue b
/// @param alpha a
/// @return color
+ (UIColor *)colorForRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

/// 十六进行颜色值，默认黑色
/// @param hexString 十六进制数字符串形式，以0x开头，可支持0xRGB、0xARGB、0xRRGGBB、0xAARRGGBB
/// @return color
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end



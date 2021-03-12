//
//  UIColor+CATDecimal.m
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/12.
//

#import "UIColor+CATDecimal.h"

@implementation UIColor (CATDecimal)

/// 十六进行颜色值，默认黑色
/// @param hexString 十六进制数字符串形式，以0x开头，可支持0xRGB、0xARGB、0xRRGGBB、0xAARRGGBB
/// @return color
+ (UIColor *)colorWithHexString:(NSString *)hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"0x" withString:@""] uppercaseString];
    CGFloat alpha = 1.0, red = 0.0, blue = 0.0, green = 0.0;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom:colorString start:0 length:1];
            green = [self colorComponentFrom:colorString start:1 length:1];
            blue  = [self colorComponentFrom:colorString start:2 length:1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom:colorString start:0 length:1];
            red   = [self colorComponentFrom:colorString start:1 length:1];
            green = [self colorComponentFrom:colorString start:2 length:1];
            blue  = [self colorComponentFrom:colorString start:3 length:1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom:colorString start:0 length:2];
            green = [self colorComponentFrom:colorString start:2 length:2];
            blue  = [self colorComponentFrom:colorString start:4 length:2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom:colorString start:0 length:2];
            red   = [self colorComponentFrom:colorString start:2 length:2];
            green = [self colorComponentFrom:colorString start:4 length:2];
            blue  = [self colorComponentFrom:colorString start:6 length:2];
            break;
        default:
            break;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


/// 将十六进制数的字符串形式按颜色值进行分割，并转化成对应的颜色值
/// @param string 十六进制数字符串
/// @param start 颜色值的开始位置
/// @param length 颜色值的长度
/// @return 对十六进制数字符串的指定范围转化成对应的数值
+ (CGFloat)colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length {
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring :[NSString stringWithFormat:@"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString:fullHex] scanHexInt:&hexComponent];
    return hexComponent / 255.0;
}
@end

//
//  UIColor+CATDecimal.h
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/12.
//

#import <UIKit/UIKit.h>


/// 进制对应的颜色值
@interface UIColor (CATDecimal)

/// 十六进行颜色值，默认黑色
/// @param hexString 十六进制数字符串形式，以0x开头，可支持0xRGB、0xARGB、0xRRGGBB、0xAARRGGBB
/// @return color
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end



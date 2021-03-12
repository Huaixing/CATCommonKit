//
//  NSAttributedString+CATSize.m
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/2/26.
//

#import "NSAttributedString+CATSize.h"

@implementation NSAttributedString (CATSize)
/// 计算富文本在指定宽度中所占用的尺寸
/// 不限高
/// @param limitWidth 限制宽度
/// @return 富文本所在尺寸
- (CGSize)cat_sizeWithLimitWidth:(CGFloat)limitWidth {
    if (self.length == 0) {
        return CGSizeZero;
    }
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, limitWidth, 0)];
    label.numberOfLines = 2;
    label.attributedText = self;
    [label sizeToFit];
    
    CGSize size = CGSizeMake(ceil(label.frame.size.width), ceil(label.frame.size.height));
    return size;
}
@end

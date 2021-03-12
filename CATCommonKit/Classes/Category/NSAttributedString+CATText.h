//
//  NSAttributedString+CATText.h
//  CATCommonKit
//
//  Created by huaixing Shi on 2021/2/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSParagraphStyle (CATText)
/**
 Creates a new NSParagraphStyle object from the CoreText Style.
 
 @param CTStyle CoreText Paragraph Style.
 
 @return a new NSParagraphStyle
 */
+ (nullable NSParagraphStyle *)styleWithCTStyle:(CTParagraphStyleRef)CTStyle;

@end

@interface NSAttributedString (CATText)

@property (nullable, nonatomic, strong, readonly) NSParagraphStyle *paragraphStyle;
@property (nullable, nonatomic, strong, readonly) UIFont *font;
@property (nullable, nonatomic, strong, readonly) UIColor *color;
@property (nonatomic, readonly) NSTextAlignment alignment;
@property (nonatomic, readonly) NSLineBreakMode lineBreakMode;
@property (nonatomic, readonly) CGFloat lineSpacing;
@property (nonatomic, readonly) CGFloat maximumLineHeight;
@property (nonatomic, readonly) CGFloat minimumLineHeight;
@property (nullable, nonatomic, strong, readonly) NSNumber *baselineOffset;
@end


@interface NSMutableAttributedString (CATText)

@property (nullable, nonatomic, strong, readwrite) NSParagraphStyle *paragraphStyle;
@property (nullable, nonatomic, strong, readwrite) UIFont *font;
@property (nullable, nonatomic, strong, readwrite) UIColor *color;
@property (nonatomic, readwrite) NSTextAlignment alignment;
@property (nonatomic, readwrite) NSLineBreakMode lineBreakMode;
@property (nonatomic, readwrite) CGFloat lineSpacing;
@property (nonatomic, readwrite) CGFloat maximumLineHeight;
@property (nonatomic, readwrite) CGFloat minimumLineHeight;
@property (nullable, nonatomic, strong, readwrite) NSNumber *baselineOffset;
@end

NS_ASSUME_NONNULL_END

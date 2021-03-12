//
//  CATHUDUtils.h
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/14.
//

#import <Foundation/Foundation.h>

typedef void (^CATHUDCompletionBlock)(void);

@interface CATHUDUtils : NSObject

#pragma mark - toast alert
/// show on key window
/// MultiLine
/// @param message message
+ (void)showToastWithMessage:(NSString *)message;
/// show on inview
/// @param message MultiLine message
/// @param inView super view
+ (void)showToastWithMessage:(NSString *)message inView:(UIView *)inView;


/// show on key window
/// single line
/// @param tip tip
+ (void)showToastWithTip:(NSString *)tip;
/// show on inview
/// single line
/// @param tip tip
/// @param inView super view
+ (void)showToastWithTip:(NSString *)tip inView:(UIView *)inView;


/// show on key window
/// @param tip tip, single line
/// @param message message, MultiLine
+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message;
/// show on inview
/// @param tip tip, single line
/// @param message message, MultiLine
/// @param inView super view
+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message inView:(UIView *)inView;

/// show on inview
/// @param tip tip, single line
/// @param message message, MultiLine
/// @param inView super view
/// @param complete handle when hud hidden
+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message inView:(UIView *)inView complete:(CATHUDCompletionBlock)complete;


@end


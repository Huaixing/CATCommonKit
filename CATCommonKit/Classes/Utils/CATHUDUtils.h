//
//  CATHUDUtils.h
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface CATHUDUtils : NSObject

/// show on key window
/// @param message message
+ (void)showToastWithMessage:(NSString *)message;
+ (void)showToastWithMessage:(NSString *)message inView:(UIView *)inView;
@end


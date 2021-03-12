//
//  CATHUDUtils.m
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/14.
//

#import "CATHUDUtils.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation CATHUDUtils

#pragma mark - toast alert
+ (void)showToastWithMessage:(NSString *)message {
    UIWindow *keywindow = [UIApplication sharedApplication].keyWindow;
    [self showToastWithMessage:message inView:keywindow];
}

+ (void)showToastWithTip:(NSString *)tip {
    UIWindow *keywindow = [UIApplication sharedApplication].keyWindow;
    [self showToastWithTip:tip inView:keywindow];
}

+ (void)showToastWithMessage:(NSString *)message inView:(UIView *)inView {
    [self showToastWithTip:nil message:message inView:inView];
}

+ (void)showToastWithTip:(NSString *)tip inView:(UIView *)inView {
    [self showToastWithTip:tip message:nil inView:inView];
}


+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message {
    UIWindow *keywindow = [UIApplication sharedApplication].keyWindow;
    [self showToastWithTip:tip message:message inView:keywindow];
}

+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message inView:(UIView *)inView {
    [self showToastWithTip:tip message:message inView:inView complete:nil];
}


/// show on inview
/// @param tip tip, single line
/// @param message message, MultiLine
/// @param inView super view
/// @param complete handle when hud hidden
+ (void)showToastWithTip:(NSString *)tip message:(NSString *)message inView:(UIView *)inView complete:(CATHUDCompletionBlock)complete {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:inView animated:YES];
    hud.mode = MBProgressHUDModeText;
    if (tip.length) {
        hud.label.font = [UIFont boldSystemFontOfSize:17];
        hud.label.textColor = [UIColor blackColor];
        hud.label.text = tip;
    }
    if (message.length) {
        hud.detailsLabel.font = [UIFont systemFontOfSize:15];
        hud.detailsLabel.text = message;
    }
    if (complete) {
        hud.completionBlock = complete;
    }
    hud.removeFromSuperViewOnHide = YES;
    hud.minSize = CGSizeMake(100, 100);
    hud.square = YES;
    
    hud.userInteractionEnabled = NO;
    
    [hud hideAnimated:YES afterDelay:2.0];
}

@end

//
//  CATHUDUtils.m
//  CATCommonKit
//
//  Created by Shihuaixing on 2020/10/14.
//

#import "CATHUDUtils.h"

#import <MBProgressHUD.h>

@implementation CATHUDUtils

+ (void)showToastWithMessage:(NSString *)message {
    
    UIWindow *keywindow = [UIApplication sharedApplication].keyWindow;
    [self showToastWithMessage:message inView:keywindow];
}

+ (void)showToastWithMessage:(NSString *)message inView:(UIView *)inView {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:inView animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.font = [UIFont boldSystemFontOfSize:17.0];
    hud.label.textColor = [UIColor blackColor];
    hud.label.text = message;
    hud.userInteractionEnabled = NO;
    [hud hideAnimated:YES afterDelay:2.0];
}

@end

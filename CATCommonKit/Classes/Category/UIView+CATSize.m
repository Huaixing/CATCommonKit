//
//  UIView+CATSize.m
//  CATProject
//
//  Created by Shihuaixing on 2020/9/4.
//  Copyright © 2020 Shihuaixing. All rights reserved.
//

#import "UIView+CATSize.h"

@implementation UIView (CATSize)

#pragma mark - Getter
- (CGFloat)x {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)y {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)right {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)centerX {
    return self.x + self.width / 2.0;
}

- (CGFloat)centerY {
    return self.y + self.height / 2.0;
}

- (CGSize)size {
    return self.frame.size;
}

#pragma mark - Setter
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setBottom:(CGFloat)bottom {
    
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.height;
    self.frame = frame;
}

- (void)setRight:(CGFloat)right {
    
    CGRect frame = self.frame;
    frame.origin.x = right - self.width;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX {
    
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setCenterY:(CGFloat)centerY {
    
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (void)setSize:(CGSize)size {
    
    CGRect frame = self.frame;
    frame.size.width = size.width;
    frame.size.height = size.height;
    self.frame = frame;
}

/// 选择栏底部留白，刘海屏适配
+ (CGFloat)safeAreaInsetsBottom {
    return [UIApplication sharedApplication].keyWindow.safeAreaInsets.bottom;
}

/// 选择栏顶部留白，刘海屏适配
+ (CGFloat)safeAreaInsetsTop {
    return [UIApplication sharedApplication].keyWindow.safeAreaInsets.top;
}

/// status bar height
+ (CGFloat)statusBarHeight {
    float statusBarHeight = 0;
    if (@available(iOS 13.0, *)) {
        UIStatusBarManager *statusBarManager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;
        statusBarHeight = statusBarManager.statusBarFrame.size.height;
    } else {
        statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    }
    return statusBarHeight;
}
/// navigation bar height + status bar height
//+ (CGFloat)navigationBottomWithNavigationController:(UINavigationController *)navigationController {
//    CGFloat navigationBarHeight = 44.0;
//    if (navigationController) {
//        navigationBarHeight = navigationController.navigationBar.height;
//    }
//    return navigationBarHeight + [self statusBarHeight];
//}

@end

//
//  UIView+CATSize.h
//  CATProject
//
//  Created by Shihuaixing on 2020/9/4.
//  Copyright © 2020 Shihuaixing. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIView (CATSize)


@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGSize  size;

/// 选择栏底部留白，刘海屏适配
+ (CGFloat)safeAreaInsetsBottom;
/// 选择栏顶部留白，刘海屏适配
+ (CGFloat)safeAreaInsetsTop;

/// status bar height
+ (CGFloat)statusBarHeight;
/// navigation bar height + status bar height
//+ (CGFloat)navigationBottomWithNavigationController:(UINavigationController *)navigationController;

@end



//
//  MBProgressHUD+FKAdd.h
//  BTYxyz
//
//  Created by ForKid on 2017/5/8.
//  Copyright © 2017年 CDBottle. All rights reserved.
//


#if __has_include(<MBProgressHUD/MBProgressHUD.h>)
#import <MBProgressHUD/MBProgressHUD.h>
#else
#import "MBProgressHUD.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (FKAdd)

+ (void)showMessage:(nullable NSString *)message onView:(UIView *)view;

+ (void)showLoading:(nullable NSString *)message onView:(UIView *)view;

+ (MBProgressHUD *)showProgress:(nullable NSString *)message progress:(CGFloat)progress onView:(UIView *)view;

+ (void)showSuccess:(NSString *)message onView:(UIView *)view;

+ (void)showWarning:(NSString *)message onView:(UIView *)view;

+ (void)hideAnimated:(BOOL)animated forView:(UIView *)view;


@end

NS_ASSUME_NONNULL_END

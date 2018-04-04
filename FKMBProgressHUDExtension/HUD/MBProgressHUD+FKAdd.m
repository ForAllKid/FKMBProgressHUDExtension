//
//  MBProgressHUD+FKAdd.m
//  BTYxyz
//
//  Created by ForKid on 2017/5/8.
//  Copyright © 2017年 CDBottle. All rights reserved.
//

#import "MBProgressHUD+FKAdd.h"

@implementation MBProgressHUD (FKAdd)


+ (void)showMessage:(NSString *)message onView:(UIView *)view{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message onView:view];
    hud.mode = MBProgressHUDModeText;
    hud.contentColor = [UIColor whiteColor];
    hud.margin = 10.f;
    hud.square = NO;
    [hud showAnimated:YES];
    [hud hideAnimated:YES afterDelay:1.2f];
}

+ (void)showLoading:(NSString *)message onView:(UIView *)view{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message onView:view];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.contentColor = [UIColor whiteColor];
    hud.square = YES;
    [hud showAnimated:YES];
}


+ (MBProgressHUD *)showProgress:(NSString *)message progress:(CGFloat)progress onView:(UIView *)view{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message onView:view];
    hud.mode = MBProgressHUDModeAnnularDeterminate;
    hud.progress = progress;
    hud.square = YES;
    hud.contentColor = [UIColor whiteColor];
    [hud showAnimated:YES];
    return hud;
}


+ (void)showSuccess:(NSString *)message onView:(UIView *)view{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message onView:view];
    hud.mode = MBProgressHUDModeCustomView;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_hud_success_new"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    hud.square = YES;
    hud.customView = imageView;
    hud.minSize = CGSizeMake(80, 80.f);
    hud.contentColor = [UIColor whiteColor];
    [hud showAnimated:YES];
    [hud hideAnimated:YES afterDelay:1.2f];
}

+ (void)showWarning:(NSString *)message onView:(UIView *)view{
    
}


+ (void)hideAnimated:(BOOL)animated forView:(nonnull UIView *)view{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:view];
    [hud hideAnimated:YES];
}

+ (MBProgressHUD*)createMBProgressHUDviewWithMessage:(NSString*)message onView:(UIView *)view{
    
    
    MBProgressHUD *hud = [MBProgressHUD HUDForView:view];
    
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    }
    
    hud.animationType = MBProgressHUDAnimationFade;
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5f];
    hud.label.text = message ? message:@"加载中";
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.label.textColor = [UIColor whiteColor];
    hud.label.numberOfLines = 0;
    hud.removeFromSuperViewOnHide = YES;
    hud.customView.hidden = NO;
    return hud;
}

@end

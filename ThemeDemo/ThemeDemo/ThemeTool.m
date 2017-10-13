//
//  ThemeTool.m
//  ThemeDemo
//
//  Created by Justin on 2017/10/12.
//  Copyright © 2017年 jerei. All rights reserved.
//

#import "ThemeTool.h"

#define kTheme @"theme"
@implementation ThemeTool

+ (NSString *)getTheme {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *themeStr = [defaults objectForKey:kTheme];
    if (themeStr.length == 0) {
        themeStr = @"chunjie";
    }
    return themeStr;
}

+ (void)saveTheme:(NSString *)theme {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:theme forKey:kTheme];
    [defaults synchronize];
}

+ (UIImage *)getImage {
    return [UIImage imageNamed:[NSString stringWithFormat:@"images.bundle/%@/back.png", [self getTheme]]];
}

+ (UIColor *)getColor:(NSString *)type {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ColorConfig.plist" ofType:nil inDirectory:[NSString stringWithFormat:@"images.bundle/%@", [self getTheme]]];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *colorStr = dic[type];
    NSArray *colorArray = [[NSArray alloc] init];
    if (colorStr.length != 0) {
        colorArray = [colorStr componentsSeparatedByString:@","];
    } else {
        return nil;
    }
    
    CGFloat red = [colorArray[0] floatValue];
    CGFloat green = [colorArray[1] floatValue];
    CGFloat blue = [colorArray[2] floatValue];
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0f];
    return color;
}
@end

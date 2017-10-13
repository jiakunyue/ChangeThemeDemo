//
//  ThemeTool.h
//  ThemeDemo
//
//  Created by Justin on 2017/10/12.
//  Copyright © 2017年 jerei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ThemeTool : NSObject
+ (UIImage *)getImage;

+ (UIColor *)getColor:(NSString *)type;

+ (void)saveTheme:(NSString *)theme;
@end

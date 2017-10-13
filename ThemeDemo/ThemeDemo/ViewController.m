//
//  ViewController.m
//  ThemeDemo
//
//  Created by Justin on 2017/10/12.
//  Copyright © 2017年 jerei. All rights reserved.
//

#import "ViewController.h"
#import "ThemeTool.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backImage;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backImage.image = [ThemeTool getImage];
    self.contentLabel.textColor = [ThemeTool getColor:@"labelFC"];
}

- (IBAction)btn1:(id)sender {
    [ThemeTool saveTheme:@"chunjie"];
    self.backImage.image = [ThemeTool getImage];
    self.contentLabel.textColor = [ThemeTool getColor:@"labelFC"];
}

- (IBAction)btn2:(id)sender {
    [ThemeTool saveTheme:@"guoqing"];
    self.backImage.image = [ThemeTool getImage];
    self.contentLabel.textColor = [ThemeTool getColor:@"labelFC"];
}

- (IBAction)btn3:(id)sender {
    [ThemeTool saveTheme:@"zhongqiu"];
    self.backImage.image = [ThemeTool getImage];
    self.contentLabel.textColor = [ThemeTool getColor:@"labelFC"];
}


@end

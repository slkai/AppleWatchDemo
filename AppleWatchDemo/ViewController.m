//
//  ViewController.m
//  AppleWatchDemo
//
//  Created by dengjunjie on 15/5/19.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)btnClick:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(UIButton *)sender {
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [[NSDate alloc] initWithTimeIntervalSinceNow:5];
    localNotification.alertTitle = @"title";
    localNotification.alertBody = @"body";
    localNotification.category = @"category";
    localNotification.userInfo = @{@"userInfo":@"userInfo"};
    
    localNotification.hasAction = YES;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}
@end

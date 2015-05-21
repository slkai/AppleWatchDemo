//
//  InterfaceController.m
//  AppleWatchDemo WatchKit Extension
//
//  Created by dengjunjie on 15/5/19.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *MainLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceTimer *Timer;
@property (weak, nonatomic) IBOutlet WKInterfaceGroup *Group1;
@property (weak, nonatomic) IBOutlet WKInterfaceGroup *Group2;
- (IBAction)btnClick;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

-(void)handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(UILocalNotification *)localNotification
{
    NSLog(@"Handle Action With Identifier:%@",identifier);
}

// 处理远程推送
-(void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification
{
    NSLog(@"Handle Action With Identifier:%@",identifier);
    
    if ([identifier isEqualToString:@"firstButtonAction"]) {
        [self firstButtonIsPressed];
    }
    else if ([identifier isEqualToString:@"secondButtonAction"])
    {
        [self secondButtonIsPressed];
    }
    
}

// 点我有惊喜
- (IBAction)btnClick {
    
}

-(void)firstButtonIsPressed
{
    NSLog(@"first button has been handled");
    
    [WKInterfaceController openParentApplication:@{@"userInfo":@"open the door"} reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"正在执行openParentApplication方法中的reply block");
        NSLog(@"replyInfo : %@",replyInfo);
    }];
}

-(void)secondButtonIsPressed
{
    NSDictionary *context = @{@"leftImage":@"secondButton",
                              @"rightLabel":@"secondButton"
                              };
    
    NSLog(@"处理第二个按键");
//    [self pushControllerWithName:@"DetailInterfaceController" context:context];
    [self presentControllerWithNames:@[@"DetailInterfaceController",@"MoreInterfaceController",@"MoreDetailInterfaceController"] contexts:@[context,@"More Info",@"More Detail Info"]];
}

@end




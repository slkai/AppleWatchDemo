//
//  NotificationController.m
//  AppleWatchDemo WatchKit Extension
//
//  Created by dengjunjie on 15/5/19.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "NotificationController.h"


@interface NotificationController()

@end


@implementation NotificationController

- (instancetype)init {
    self = [super init];
    if (self){

    }
    return self;
}

-(void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (void)didReceiveLocalNotification:(UILocalNotification *)localNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    
    NSLog(@"receive Remote Notification");
    NSLog(@"%@",localNotification);
    
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}


- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    
    completionHandler(WKUserNotificationInterfaceTypeCustom);
    
    NSLog(@"receive Remote Notification");
    NSLog(@"%@",remoteNotification);
    
    [WKInterfaceController openParentApplication:remoteNotification reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"%@",replyInfo);
        NSLog(@"在notificationController中处理通知: %@",replyInfo);
        
    }];
    
//    [self updateUserActivity:@"com.yaochufa.AppleWatchDemo" userInfo:@{@"myInfo":@"Hello world"} webpageURL:nil];
}


@end




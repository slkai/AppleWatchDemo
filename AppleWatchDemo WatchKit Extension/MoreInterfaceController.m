//
//  MoreInterfaceController.m
//  AppleWatchDemo
//
//  Created by dengjunjie on 15/5/20.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "MoreInterfaceController.h"

@interface MoreInterfaceController ()

@end

@implementation MoreInterfaceController

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

@end




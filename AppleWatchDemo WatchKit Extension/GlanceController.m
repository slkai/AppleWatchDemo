//
//  GlanceController.m
//  AppleWatchDemo WatchKit Extension
//
//  Created by dengjunjie on 15/5/19.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *TimeLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceTimer *timer;

@end


@implementation GlanceController

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




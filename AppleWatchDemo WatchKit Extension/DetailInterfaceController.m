//
//  DetailInterfaceController.m
//  AppleWatchDemo
//
//  Created by dengjunjie on 15/5/20.
//  Copyright (c) 2015年 dengjunjie. All rights reserved.
//

#import "DetailInterfaceController.h"

@interface DetailInterfaceController ()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *leftImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *rightLabel;
@end

@implementation DetailInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.leftImage setImage:[UIImage imageNamed:[context valueForKey:@"leftImage"]]];
    [self.rightLabel setText:[context valueForKey:@"rightLabel"]];
    
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




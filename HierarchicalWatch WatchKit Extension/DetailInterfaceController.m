//
//  DetailInterfaceController.m
//  FirstWatch
//
//  Created by Peng on 11/20/14.
//  Copyright (c) 2014 peng. All rights reserved.
//

#import "DetailInterfaceController.h"

@implementation DetailInterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
        NSString *imageName = (NSString*)context;
        
        [self.image setImage: [UIImage imageNamed:imageName ]];
    }
    return self;
}


@end

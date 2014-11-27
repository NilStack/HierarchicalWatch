//
//  InterfaceController.m
//  HierarchicalWatch WatchKit Extension
//
//  Created by Peng on 11/26/14.
//  Copyright (c) 2014 peng. All rights reserved.
//

#import "InterfaceController.h"
#import "MyTableRowController.h"

@interface InterfaceController()

@property (strong, nonatomic) NSArray *appTypes;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
        self.appTypes = @[@"apps", @"glances", @"notifications"];
        
        [self.table setNumberOfRows:self.appTypes.count withRowType:@"MyTableRowController"];
        
        [self.appTypes enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
            MyTableRowController* row = [self.table rowControllerAtIndex:idx];
            
            [row.appType setText: (NSString*)obj];
            [row.logo setImage:[UIImage imageNamed:(NSString *)obj]];
            
        }];

        
    }
    return self;
}

- (instancetype) contextForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex{
    
    return [self.appTypes objectAtIndex:rowIndex];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end




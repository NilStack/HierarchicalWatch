//
//  MyTableRowController.h
//  HierarchicalWatch
//
//  Created by Peng on 11/27/14.
//  Copyright (c) 2014 peng. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface MyTableRowController : NSObject
@property (weak, nonatomic) IBOutlet WKInterfaceImage *logo;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *appType;

@end

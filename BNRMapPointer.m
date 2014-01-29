//
//  BNRMapPointer.m
//  Whereami
//
//  Created by Vincent Pillinger on 1/29/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "BNRMapPointer.h"

@implementation BNRMapPointer
@synthesize coordinate, title;
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t{
    self = [super init];
    if (self){
        coordinate = c;
        title = t;
    }
    return self;
}
- (id) init {
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"HomeTown"];
}
@end

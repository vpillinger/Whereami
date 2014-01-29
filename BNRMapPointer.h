//
//  BNRMapPointer.h
//  Whereami
//
//  Created by Vincent Pillinger on 1/29/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPointer : NSObject <MKAnnotation>

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@end

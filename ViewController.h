//
//  ViewController.h
//  Whereami
//
//  Created by Vincent Pillinger on 1/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate> {
    CLLocationManager *locationManager;
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView * activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

@end

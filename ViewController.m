//
//  ViewController.m
//  Whereami
//
//  Created by Vincent Pillinger on 1/27/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [worldView setShowsUserLocation:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@",[newLocation description]);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find the location %@",[error localizedDescription]);
}
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 5000, 5000);
    [worldView setRegion:region animated:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self findLocation];
    [textField resignFirstResponder];
    return YES;
}
@end

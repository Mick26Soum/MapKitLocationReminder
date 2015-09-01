//
//  ViewController.m
//  MapKit
//
//  Created by MICK SOUMPHONPHAKDY on 8/31/15.
//  Copyright (c) 2015 MICK SOUMPHONPHAKDY. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "Constants.h"
#import <CoreLocation/CoreLocation.h>

// put constant here if you only want it to be accesible to only this file
// do not use the extern keyword

@interface ViewController ()<CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@property (copy, nonatomic) void(^myBlock)(NSString*); //declare it here

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	
	[CLLocationManager authorizationStatus];
	self.locationManager = [[CLLocationManager alloc] init];
	// delegate here
	self.locationManager.delegate = self;
	[self.locationManager requestWhenInUseAuthorization];
	//grab key and it to the property list
	//NSLocationWheinUsageDescription
	//String string for value, this will pop up in alert
	
	[self.locationManager startUpdatingLocation];
	
}


-(void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
//	[self.mapView setRegion:MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(47.6235, -122.3363), 10, 10) animated:true];
	
//	[UIView animateWithDuration:0.3 animations:^{
//		// example
//	}];
	
	self.myBlock = ^void(NSString *name){
		//anything is bracket is the block
	};
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)longBeachButtonPressed:(id)sender {
			[self.mapView setRegion:MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(46.3508, -124.0536), 100, 100) animated:true];
}

- (IBAction)capitolHillButtonPressed:(id)sender {
			[self.mapView setRegion:MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(38.8897, -77.0111), 10, 10) animated:true];
}

- (IBAction)newYorkButtonPressed:(id)sender {
			[self.mapView setRegion:MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(40.7127, -74.0059), 10, 10) animated:true];
}

@end

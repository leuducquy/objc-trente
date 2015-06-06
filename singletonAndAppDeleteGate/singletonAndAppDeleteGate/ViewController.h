//
//  ViewController.h
//  singletonAndAppDeleteGate
//
//  Created by MAC on 6/6/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)saveDataFromSingleton:(id)sender;
- (IBAction)loadDataFromsingleton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *displaySingleton;

@end


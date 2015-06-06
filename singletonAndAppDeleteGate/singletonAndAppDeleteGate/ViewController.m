//
//  ViewController.m
//  singletonAndAppDeleteGate
//
//  Created by MAC on 6/6/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "MySingleton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveDataFromSingleton:(id)sender {
    MySingleton *singleton = [MySingleton getInstance];
    [singleton setName:@"hello ban quy"];
}

- (IBAction)loadDataFromsingleton:(id)sender {
    MySingleton *singleton = [MySingleton getInstance];
    [self.displaySingleton setText:[singleton getName]];
}
@end

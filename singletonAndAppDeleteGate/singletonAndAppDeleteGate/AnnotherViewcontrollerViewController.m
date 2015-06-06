//
//  AnnotherViewcontrollerViewController.m
//  singletonAndAppDeleteGate
//
//  Created by MAC on 6/6/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "AnnotherViewcontrollerViewController.h"
#import "ViewController.h"
@interface AnnotherViewcontrollerViewController (){
    MySingleton *singleton;
}

@end

@implementation AnnotherViewcontrollerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    singleton = [MySingleton getInstance];
    [_datafromFirstview setText:[singleton getName]];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void )viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
   
    [singleton setName:_datafromFirstview.text];
    
    
}
- (IBAction)saveNameOflabel:(id)sender {
    [_datafromFirstview setText:@"Hello ban in"];
    
}
@end

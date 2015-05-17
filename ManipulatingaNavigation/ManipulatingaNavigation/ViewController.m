//
//  ViewController.m
//  ManipulatingaNavigation
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *butonController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // self.edgesForExtendedLayout = UIRectEdgeNone;
    self.butonController = [UIButton  buttonWithType :UIButtonTypeRoundedRect];
    self.butonController.frame = CGRectMake(40.0f, 30.0f, 280.0f, 35.0f);
    [self.butonController setTitle:@"hello" forState:UIControlStateNormal];
    [self.butonController addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.butonController];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)goBack {
    NSArray *currentControllers = self.navigationController.viewControllers;
    /* Create a mutable array out of this array */
    NSMutableArray *newControllers = [NSMutableArray
                                      arrayWithArray:currentControllers];
    /* Remove the last object from the array */
    [newControllers removeLastObject];
    /* Assign this array to the Navigation Controller */
    self.navigationController.viewControllers = newControllers;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ButtonOnNavigationBar.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ButtonOnNavigationBar.h"

@interface ButtonOnNavigationBar ()

@end

@implementation ButtonOnNavigationBar

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"First Controller";
   // self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(sayHello)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(sayHello)];
    // Do any additional setup after loading the view from its nib.
}
-(void)sayHello {
    NSLog(@"Hello World");
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

@end

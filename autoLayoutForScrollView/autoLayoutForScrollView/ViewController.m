//
//  ViewController.m
//  autoLayoutForScrollView
//
//  Created by MAC on 5/31/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_hiddenButton == YES) {
        [_ButtonToVisible setHidden:YES];
        UIButton *buttonBack = [UIButton buttonWithType:UIButtonTypeCustom];
        [buttonBack setTitle:@"X" forState:UIControlStateNormal];
        buttonBack.frame = CGRectMake(0, 0, 50, 50);
        [buttonBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [buttonBack addTarget:self action:@selector(dismissbutton) forControlEvents:UIControlEventTouchUpInside];
        [_thisScrollView addSubview:buttonBack];
        
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)dismissbutton{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

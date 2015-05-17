//
//  newActivity.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "newActivity.h"
 #import "StringReverserActivity.h"
@interface newActivity ()

@end

@implementation newActivity

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSArray *itemsToShare = @[
                              @"Item 1",
                              @"Item 2",
                              @"Item 3",
                              ];
    UIActivityViewController *activity =
    [[UIActivityViewController alloc]
     initWithActivityItems:itemsToShare
     applicationActivities:@[[StringReverserActivity new]]];
    [self presentViewController:activity animated:YES completion:nil];
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

//
//  ViewB.m
//  autoLayoutForScrollView
//
//  Created by MAC on 5/31/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewB.h"
#import "ViewController.h"
@implementation ViewB

- (IBAction)backtoHintt:(id)sender {
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"backToLayout"]) {
         ViewController *vc = (ViewController*)segue.destinationViewController;
        vc.hiddenButton = YES;
    }
   
}
@end

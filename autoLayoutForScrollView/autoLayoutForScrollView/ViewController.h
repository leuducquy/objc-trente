//
//  ViewController.h
//  autoLayoutForScrollView
//
//  Created by MAC on 5/31/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property BOOL hiddenButton;
@property (weak, nonatomic) IBOutlet UIButton *ButtonToVisible;
@property (weak, nonatomic) IBOutlet UIScrollView *thisScrollView;

@end


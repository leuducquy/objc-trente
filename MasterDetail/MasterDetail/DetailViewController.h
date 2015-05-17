//
//  DetailViewController.h
//  MasterDetail
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


//
//  DetailViewController.h
//  noteExample
//
//  Created by MAC on 5/9/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol senddataProtocol <NSObject>

-(void)sendDataToA:(NSString *)myStringData;

@end
@interface DetailViewController : UIViewController
@property (nonatomic,strong)id<senddataProtocol> delegate;
@property NSInteger Keys;
@end

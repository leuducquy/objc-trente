//
//  Car.h
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
@protocol Car <NSObject>
@property (nonatomic,copy) NSArray *wheels;
@property (nonatomic,strong) UIColor *bodyColor;
@property (nonatomic,copy)NSArray *door;


@end

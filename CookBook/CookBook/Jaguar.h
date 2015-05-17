//
//  Jaguar.h
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "UIKit/UIKit.h"
@interface Jaguar : NSObject <Car>
@property (nonatomic,copy) NSArray *wheels;
@property (nonatomic,strong) UIColor *bodyColor;
@property (nonatomic,copy)NSArray *door;
@property (nonatomic) NSArray  *string;
-(void)stringsArray;
@end

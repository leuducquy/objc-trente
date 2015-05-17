//
//  Jaguar.m
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "Jaguar.h"
@interface Jaguar(){
 NSArray *stringsArray;
   
   //   __unused NSString *firstString = stringsArray[0];
//    __unused NSString *secondString = stringsArray[1];
//    __unused NSString *thirdString = stringsArray[2];

}
@end
@implementation Jaguar

-(void)stringsArray{
stringsArray = @[@"String 1",@"String 2",@"String 3"];
    __unused NSString *firstString = stringsArray[0];
    __unused NSString *secondString = stringsArray[1];
    __unused NSString *thirdString = stringsArray[2];
    NSLog(@"Jagura __unsued %@",firstString);
    NSLog(@"%@",secondString);
    NSLog(@"%@",thirdString);
    
}

@end

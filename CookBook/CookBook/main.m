//
//  main.m
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Person *newPerson = [[Person alloc] init];
       // newPerson.running = YES;
        newPerson.ten = @"quy";
        NSLog(@"ten %@", [newPerson ten]);
        NSLog(@"%d",newPerson.running);
       // NSLog(@"%d",[newPerson running]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    }

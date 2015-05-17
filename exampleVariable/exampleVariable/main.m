//
//  main.m
//  exampleVariable
//
//  Created by MAC on 5/4/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ViewController.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
       ViewController *myObject = [[ViewController alloc] init];
        [myObject setName:@"quy"];
        [myObject setAge:3];
        NSLog(@"%d",myObject.age);
        NSLog(@"%@",myObject.name);
        ViewController *initObject = [[ViewController alloc]initWithString:@"quy" age:30];
      NSLog(@"%d",initObject.age);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

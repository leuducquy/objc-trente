//
//  main.m
//  DemoTable
//
//  Created by techmaster on 8/21/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "SectionTable.h"
int main(int argc, char * argv[])
{
    @autoreleasepool {
        SectionTable *people = [[SectionTable alloc]initWithName:@"quy"];
        NSLog(@"%@",people.name);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

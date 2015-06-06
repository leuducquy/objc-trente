//
//  MySingleton.m
//  singletonAndAppDeleteGate
//
//  Created by MAC on 6/6/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton
static MySingleton *singleton;
+(MySingleton*)getInstance{
    if (singleton == nil) {
        singleton = [[super alloc]init];
    }
    return singleton;
}
-(void)setName:(NSString*)parameter{
    name = parameter;
    
}
-(NSString*)getName{
    return name;
}
@end

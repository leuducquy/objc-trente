//
//  MySingleton.h
//  singletonAndAppDeleteGate
//
//  Created by MAC on 6/6/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject{
    NSString *name;
}
+(MySingleton*)getInstance;

-(void)setName:(NSString*)parameter;
-(NSString*)getName;
@end

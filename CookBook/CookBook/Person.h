//
//  Person.h
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,assign)NSString *ten;


@property (nonatomic,copy) NSString *firstName;
@property (nonatomic,copy) NSString *lastName;
//extern NSString *const kFirstNameKey;
//extern NSString *const kLastNameKey;
 @property BOOL running;
@property (nonatomic) NSString *age;
@property(nonatomic,assign) float currentHeight;
- (void) walkAtKilometersPerHour:(float)paramSpeedKilometersPerHour;
-(void)runAt10KilometerPerHour ;
+(float) maximumHeightInCentimeters;
+(float) minimumHeightInCentimeters;
-(id) objectForKeySubcripting : (id<NSCopying>)paramKey;
-(void) setObject :(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey;
@end

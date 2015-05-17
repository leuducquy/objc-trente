//
//  Person.m
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "Person.h"

@implementation Person
NSString *const kFirstName = @"firstName";
NSString *const kLastName = @"firstName";
@synthesize age = _age;
@synthesize running = _running;

- (BOOL)running {
     NSString *khongchay = @"khongchay";
    NSLog(@"%@",khongchay);
    return _running;
}
- (void)setRunning:(BOOL)newValue {
    _running = newValue;
}
-(id) objectForKeySubcripting : (id<NSCopying>)paramKey
{
    NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]])
        { NSString *keyAsString = (NSString *)keyAsObject;
            if ([keyAsString isEqualToString:kFirstName] ||
                [keyAsString isEqualToString:kLastName])
                {
                        return [self valueForKey:keyAsString];
                }
        }
    return nil;
}
- (void) setObject:(id)paramObject forKeyedSubscript:(id<NSCopying>)paramKey{ NSObject<NSCopying> *keyAsObject = (NSObject<NSCopying> *)paramKey;
    if ([keyAsObject isKindOfClass:[NSString class]]){
        NSString *keyAsString = (NSString *)keyAsObject; if ([keyAsString isEqualToString:kFirstName] ||
                                                             [keyAsString isEqualToString:kLastName]){
            [self setValue:paramObject forKey:keyAsString];
        }
    } }
- (void) walkAtKilometersPerHour:(float)paramSpeedKilometersPerHour{ /* Write the code for this method here */
    NSLog(@"Thoi gian di bo tren 1 gio la: %f",paramSpeedKilometersPerHour);
}
-(void)runAt10KilometerPerHour {
    [self walkAtKilometersPerHour: 10.0f];
}
-(void)singSong: (NSData *)paramSongData loundly:(BOOL)paramLoundly{
    
}
+(float) maximumHeightInCentimeters{
    return 250.0f;
}
+(float) minimumHeightInCentimeters{
    return 40.0f;
}
@end

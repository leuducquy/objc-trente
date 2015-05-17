//
//  AppDelegate.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "AppDelegate.h"
#import "BootLogic.h"
#import "Person.h"
#import "Jaguar.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Jaguar *jar = [[Jaguar alloc] init];
    [jar stringsArray];
    
    Person *person = [[Person alloc] init];
    person.firstName = @"Steven";
    person.lastName = @"Jobs";
    
    [person walkAtKilometersPerHour:3.0f];
    [person runAt10KilometerPerHour];
    Person *tallent = [[Person alloc] init];
    tallent.firstName = @"steve";
    tallent.lastName = @"Jobs";
    tallent.currentHeight = 170.0f;
    float minHeight =  [Person minimumHeightInCentimeters];
    float maxHeight = [Person maximumHeightInCentimeters];
    if (tallent.currentHeight >= minHeight && tallent.currentHeight <= maxHeight) {
        NSLog(@"la con nguoi");
    }else {
        NSLog(@"khong phai con nguoi");
    }
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NSString *myString = @"Objective-C is great!";
    NSLog(@"%@", myString);
    CGFloat myFloat = M_PI;
    NSLog(@"%1.2f",myFloat);
    CGFloat *pointerFloat = &myFloat;
    NSLog(@"%p", pointerFloat);

    //Cuong: Just include this line in AppDelegate
    [BootLogic boot:self.window];
    //[[DataManager sharedInstance] removeExistingData];
    [self.window makeKeyAndVisible];
   
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

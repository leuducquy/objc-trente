//
//  FailedBanksAppDelegate.h
//  FailedBanks
//
//  Created by Ray Wenderlich on 4/5/10.
//  Copyright Ray Wenderlich 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UINavigationController *_navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@end


//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
                                    @{TITLE: @"Insert a record", CLASS: @"AddPerson"},
                                    
                                    @{TITLE: @"slider Example", CLASS: @"sliderExample"},
                                    
                                    @{TITLE: @"SegmentedControl Example", CLASS: @"mySegmentedControl"},
                                    
                                    @{TITLE: @"UIActivityViewDisplay Example", CLASS: @"UIActivityViewDisplay"},
                                     @{TITLE: @"newActivity Example", CLASS: @"newActivity"},
                                     @{TITLE: @"ImageNavigationBar Example", CLASS: @"ImageNavigationBar"},
                                    
                                     @{TITLE: @"ButtonOnNavigationBar Example", CLASS: @"ButtonOnNavigationBar"},
                                      @{TITLE: @"SwitchOnNavigationBar Example", CLASS: @"SwitchOnNavigationBar"},
                                     @{TITLE: @"LabelController Example", CLASS: @"LabelController"},
                                    
                                    @{TITLE: @"myTextView Example", CLASS: @"myTextView"},
                                    @{TITLE: @"UIbuttonClick Example", CLASS: @"UIbuttonClick"},
                                    @{TITLE: @"UIImageViewOBJC Example", CLASS: @"UIImageViewOBJC"},
                                    
                                     @{TITLE: @"ScrollViewController Example", CLASS: @"ScrollViewController"},
                                    @{TITLE: @"ScrollViewPaging Example", CLASS: @"ScrollViewPaging"}
                                    
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Intermediate", MENU: @[
                                    @{TITLE: @"Inter B", CLASS: @"InterB"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"Bootstrap App";
    mainScreen.about = @"This is demo bootstrap demo app. It is collection of sample code of AVFoundation";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end

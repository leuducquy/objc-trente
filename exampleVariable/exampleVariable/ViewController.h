//
//  ViewController.h
//  exampleVariable
//
//  Created by MAC on 5/4/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString *stringone;
    NSString  *stringtwo;

}
@property (nonatomic,assign) NSString *name;
@property (nonatomic,assign) int age;
-(instancetype)initWithString: (NSString*)name age:(int)age;
@end


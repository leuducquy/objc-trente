//
//  ViewController.m
//  exampleVariable
//
//  Created by MAC on 5/4/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
   }

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    // Do any additional setup after loading the view, typically from a nib.
}
- (id)init {
    if (!(self = [super init])) // Location 1
        return nil;     // Location 2
    // Initialize fraction to 3/5   // Location 3
    NSLog(@"%d",30);
    return self;
}
-(instancetype)initWithString: (NSString*)name age:(int)age {
    self =  [super init];
    if (self) {
        _name = name;
        _age = age;
        NSLog(@"xin chao ca nha");
    }
    return  self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

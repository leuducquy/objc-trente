//
//  firstController.m
//  UItabarController
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "firstController.h"

@interface firstController ()
@property (nonatomic,strong) UIButton *lanButton;
@end

@implementation firstController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.lanButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.lanButton.frame = CGRectMake(0, 0, 200, 30);
    [self.lanButton setTitle:@"Hello" forState:UIControlStateNormal];
    self.lanButton.center = self.view.center;
    [self.view addSubview:self.lanButton];

}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if (self != nil) {
        self.title = @"First";
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        
    }
    return self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

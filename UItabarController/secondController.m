//
//  secondController.m
//  UItabarController
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "secondController.h"

@interface secondController ()
@property (nonatomic,strong)UIButton *button;
@end

@implementation secondController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(0, 0, 200, 30);
    [self.button setTitle:@"Hello" forState:UIControlStateNormal];
    self.button.center = self.view.center;
    [self.view addSubview:self.button];
   

    // Do any additional setup after loading the view from its nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
  
    if (self != nil) {
      self.title = @"Second";
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
       
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

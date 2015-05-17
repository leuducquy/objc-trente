//
//  SwitchOnNavigationBar.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "SwitchOnNavigationBar.h"

@interface SwitchOnNavigationBar ()
@property(nonatomic,strong)UISwitch *switched;
@end

@implementation SwitchOnNavigationBar

- (void)viewDidLoad {
    [super viewDidLoad];
    self.switched  = [[UISwitch alloc] init ];
    self.switched.on = YES;
    [self.switched addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.switched];
    // Do any additional setup after loading the view from its nib.
}
-(void)changeSwitch:(UISwitch *)sender{
    if (sender.on) {
        NSLog(@"Switch is on");
    }else{
        NSLog(@"Switch is off");
    }
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

//
//  UIbuttonClick.m
//  AdvanceCookbook
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "UIbuttonClick.h"

@interface UIbuttonClick ()
@property (nonatomic,strong) UIButton *myButton;

@end

@implementation UIbuttonClick

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.myButton.frame = CGRectMake(0, 0, 200, 80);
    self.myButton.center = self.view.center;
    [self.myButton setTitle:@"Press Me" forState:UIControlStateNormal];
    [self.myButton setTitle:@"I'm Pressed"
                   forState:UIControlStateHighlighted];
    [self.myButton addTarget:self action:@selector(buttonPress) forControlEvents:UIControlEventTouchUpInside];
    [self.myButton addTarget:self action:@selector(buttonIsPressed)
            forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.myButton];
    // Do any additional setup after loading the view from its nib.
}
-(void)buttonIsPressed{
    NSLog(@"Buntton is pressssss");
}
-(void)buttonPress{
    NSLog(@"button press");
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

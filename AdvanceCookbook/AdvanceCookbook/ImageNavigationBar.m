//
//  ImageNavigationBar.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ImageNavigationBar.h"

@interface ImageNavigationBar ()

@end

@implementation ImageNavigationBar

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageCenter = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    imageCenter.contentMode =  UIViewContentModeScaleAspectFit;
    imageCenter.image = [UIImage imageNamed:@"60x60-AvatarBlack"];
    self.navigationItem.titleView = imageCenter;
    // Do any additional setup after loading the view from its nib.
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

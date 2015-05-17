//
//  anotherWithXibViewController.m
//  presentAndDismissController
//
//  Created by MAC on 5/10/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "anotherWithXibViewController.h"

@interface anotherWithXibViewController ()

@end

@implementation anotherWithXibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *mybuton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    mybuton.frame = CGRectMake(0, 0, 40, 20);
    mybuton.center = self.view.center;
    [mybuton setTitle:@"Back" forState:UIControlStateNormal];
    [mybuton addTarget:self action:@selector(clickToBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]init];
    [item setTitle:@"Done"];
    self.navigationItem.rightBarButtonItem = item;
//
//    
//    [self.view addSubview:mybuton];
    // Do any additional setup after loading the view from its nib.
}
-(void)clickToBack{
    [self dismissViewControllerAnimated:YES completion:nil];
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

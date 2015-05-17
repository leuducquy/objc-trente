//
//  presentViewController.m
//  presentAndDismissController
//
//  Created by MAC on 5/10/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "presentViewController.h"

@interface presentViewController ()
- (IBAction)dismissAction:(id)sender;

@end

@implementation presentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
   
    
    NSLog(@"hello");
//    [self.navigationController setNavigationBarHidden:YES animated:NO];
//    
//    // 2. create a new nav bar and style it
//    UINavigationBar *navbar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 64)];
//    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(Back)];
//    [item setTitle:@"Done"];
//    UINavigationItem *newitem = [[UINavigationItem alloc]init];
//    newitem.rightBarButtonItem = item;
//    [navbar setItems:@[newitem]];
//    
//    // 4. add the nav bar to the main view
//    [self.view addSubview:navbar];
   //    [self dismissViewControllerAnimated:YES completion:nil];
    // Do any additional setup after loading the view.
}
-(void)Back {
    
     
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

- (IBAction)dismissAction:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    }
@end

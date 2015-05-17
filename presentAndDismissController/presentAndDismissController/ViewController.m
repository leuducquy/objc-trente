//
//  ViewController.m
//  presentAndDismissController
//
//  Created by MAC on 5/10/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"
#import "presentViewController.h"
#import "anotherWithXibViewController.h"
@interface ViewController ()
- (IBAction)presentButton:(id)sender;
- (IBAction)connectToXib:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentButton:(id)sender {
   
//    UIStoryboard *storyboard  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    presentViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"presentViewController"];
//    [self presentViewController:vc animated:YES completion:nil];
    
   }

- (IBAction)connectToXib:(id)sender {
    anotherWithXibViewController *vc  = [[anotherWithXibViewController alloc] initWithNibName:@"anotherWithXibViewController" bundle:nil];
//    [self presentViewController:vc animated:YES completion:nil];
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end

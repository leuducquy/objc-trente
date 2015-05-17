//
//  ViewController.m
//  popOverController
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"
#import "popController.h"
@interface ViewController ()<UIAlertViewDelegate>
@property (nonatomic,strong)UIPopoverController *myPopover;
@property (nonatomic,strong)UIBarButtonItem *barAdd;
@property (nonatomic,strong) UIButton *mybutton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    Class popoverClass = NSClassFromString(@"UIPopoverController");
    if (popoverClass != nil &&
                                                                        UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        popController *content =
        [[popController alloc] initWithNibName:nil
                                                       bundle:nil];
        self.myPopover = [[UIPopoverController alloc]
                                    initWithContentViewController:content];
        content.myPopController = self.myPopover;
       
        
        
        
    } else {
        self.mybutton =
        [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
        self.mybutton.center = self.view.center;
        [self.mybutton setTitle:@"POP" forState:UIControlStateNormal];
        [self.mybutton addTarget:self action:@selector(performAddWithAlertView:) forControlEvents:UIControlEventTouchUpInside];
         [self.view addSubview:self.mybutton];

    }
    self.mybutton =
    [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.mybutton.frame = CGRectMake(0.0f, 0.0f, 200.0f, 40.0f);
    //[self.mybutton buttonType: UIButtonTypeRoundedRect];
    self.mybutton.center = self.view.center;
    [self.mybutton setTitle:@"POP" forState:UIControlStateNormal];
    [self.mybutton addTarget:self action:@selector(performAddWithAlertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.mybutton];
//    [self.navigationItem setRightBarButtonItem:self.barAdd
//                                      animated:NO];
//    [self.navigationItem.rightBarButtonItem setEnabled:TRUE];
// Do any additional setup after loading the view, typically from a nib.
}
- (NSString *) photoButtonTitle
{
    return @"Photo";
}
- (NSString *) audioButtonTitle
{
    return @"Audio";
}
- (void) alertView:(UIAlertView *)alertView
didDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:[self photoButtonTitle]]){ /* Adding a photo ... */
    }
    else if ([buttonTitle isEqualToString:[self audioButtonTitle]]){
        /* Adding an audio... */
    }
}
-(void)performAddWithAlertView:(id)paramSender{
   
    [[[UIAlertView alloc] initWithTitle:nil
                                message:@"Add..."
                               delegate:self
                      cancelButtonTitle:@"Cancel"
                      otherButtonTitles:
      [self photoButtonTitle],    [self audioButtonTitle], nil] show];
}
- (void) performAddWithPopover:(id)paramSender{
    [self.myPopover presentPopoverFromRect:self.mybutton.frame inView:self.view permittedArrowDirections: UIPopoverArrowDirectionAny animated:YES];

//          [self.myPopover
//     presentPopoverFromBarButtonItem:self.mybutton
//     permittedArrowDirections:UIPopoverArrowDirectionAny
//     animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

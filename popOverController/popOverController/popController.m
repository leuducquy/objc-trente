//
//  popController.m
//  popOverController
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "popController.h"

@interface popController ()
@property (nonatomic, strong) UIButton *buttonPhoto;
@property (nonatomic, strong) UIButton *buttonAudio;
@end

@implementation popController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.preferredContentSize = CGSizeMake(100.0f, 125.0f);
    CGRect buttonRect = CGRectMake(20.0f,
                                   20.0f,
                                   160.0f,
                                   37.0f);
    self.buttonPhoto = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.buttonPhoto setTitle:@"Photo"
                      forState:UIControlStateNormal];
    [self.buttonPhoto addTarget:self
                         action:@selector(gotoAppleWebsite:) forControlEvents:UIControlEventTouchUpInside];
    self.buttonPhoto.frame = buttonRect;
    [self.view addSubview:self.buttonPhoto];
    buttonRect.origin.y += 50.0f;
    self.buttonAudio = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.buttonAudio setTitle:@"Audio"
                      forState:UIControlStateNormal];
    [self.buttonAudio addTarget:self action:@selector(gotoAppleStoreWebsite:)
               forControlEvents:UIControlEventTouchUpInside];
    self.buttonAudio.frame = buttonRect;
    [self.view addSubview:self.buttonAudio];

    // Do any additional setup after loading the view.
}
- (BOOL) isInPopover{
    Class popoverClass = NSClassFromString(@"UIPopoverController");
    if (popoverClass != nil &&
        UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad && self.myPopController != nil){
        return YES;
    }else{
        return NO;
    }
}
- (void) gotoAppleWebsite:(id)paramSender{
    if ([self isInPopover]){
        /* Go to website and then dismiss popover */ [self.myPopController
                                                      dismissPopoverAnimated:YES];
    } else {
        /* Handle case for iPhone */
    }
}
- (void) gotoAppleStoreWebsite:(id)paramSender{
    if ([self isInPopover]){
        /* Go to website and then dismiss popover */ [self.myPopController
                                                      dismissPopoverAnimated:YES];
    } else {
        /* Handle case for iPhone */
    } }
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

//
//  UIActivityViewDisplay.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "UIActivityViewDisplay.h"

@interface UIActivityViewDisplay ()<UITextFieldDelegate>
@property (nonatomic, strong)  UITextField *textField;
@property (nonatomic, strong) UIButton *buttonShare;
@property (nonatomic, strong) UIActivityViewController *activityViewController;
@end

@implementation UIActivityViewDisplay



- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self createTextField];
    [self createButton];
    // Do any additional setup after loading the view from its nib.
}
-(void)createButton {
    self.buttonShare = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonShare.frame = CGRectMake(20.0f, 80.0f, 280.f, 30.f);
    self.buttonShare.translatesAutoresizingMaskIntoConstraints = NO;
    [self.buttonShare setTitle:@"Share" forState:UIControlStateNormal];
    [self.buttonShare addTarget:self action:@selector(onShare1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonShare];
    
}
-(void)onShare1{
    if([self.textField.text length] == 0) {
        NSString *message = @"Please enter text and then press Share";
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
        return;
    }
    self.activityViewController = [[UIActivityViewController alloc]
                                   initWithActivityItems:@[self.textField.text]
                                   applicationActivities:nil];
    [self presentViewController:self.activityViewController
                       animated:YES
                     completion:^{
                         /* Nothing for now */
                     }];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void) createTextField {
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20.0f, 35.0f, 280.0f, 30.0f)];
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"Enter text to share";
    self.textField.delegate = self;
    [self.view addSubview:self.textField];
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

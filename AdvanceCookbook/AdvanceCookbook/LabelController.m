//
//  LabelController.m
//  AdvanceCookbook
//
//  Created by MAC on 4/27/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "LabelController.h"

@interface LabelController ()
@property (nonatomic,strong)UILabel *label;
@property (nonatomic,strong)UITextField *myTextField;
@property (nonatomic, strong) UILabel *labelCounter;
@end

@implementation LabelController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *quy = [[NSArray alloc] initWithObjects:@3,@4,@5, nil];
    NSLog(@"%@",quy);
    CGRect labelFrame = CGRectMake(0.0f, 0.0f, 200.0f, 23.0f);
    self.label = [[UILabel alloc] initWithFrame:labelFrame];
    self.label.text = @"Progamming IOS 7";
    self.label.textColor = [UIColor redColor];
    self.label.adjustsFontSizeToFitWidth = YES;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.numberOfLines = 3.0f;
    self.label.shadowColor = [UIColor lightGrayColor];
    self.label.shadowOffset = CGSizeMake(2.0f, 2.0f);
    self.label.font = [UIFont boldSystemFontOfSize:40.0f];
    self.label.center = self.view.center;
    [self.view addSubview:self.label];
    CGRect textFieldFrame = CGRectMake(self.view.center.x * 0.5f ,
                                    self.view.center.y + 40.0,
                                       200.0f,
                                       23.0f);
   self.myTextField = [[UITextField alloc]
                        initWithFrame:textFieldFrame];
    self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
    //self.myTextField.contentVerticalAlignment =
    //UIControlContentVerticalAlignmentCenter;
    self.myTextField.textAlignment = NSTextAlignmentCenter;
    self.myTextField.text = @"Sir Richard Branson";
     [self.view addSubview:self.myTextField];
    CGRect labelCounterFrame =  textFieldFrame;
    //self.labelCounter.center.x  = self.view.center.x;
    
        self.labelCounter.textAlignment = NSTextAlignmentCenter;
    self.labelCounter = [[UILabel alloc] initWithFrame:labelCounterFrame];
    self.labelCounter.center = CGPointMake(self.view.center.x * 0.8f, self.view.center.y + 20.0f);
    [self.view addSubview:self.labelCounter];
    [self calculateAndDisplayTextFieldLengthWithText:self.myTextField.text];
   
    // Do any additional setup after loading the view from its nib.
}

- (void) calculateAndDisplayTextFieldLengthWithText:(NSString *)paramText{
    NSString *characterOrCharacters = @"Characters";
    if ([paramText length] == 1)
    {
        characterOrCharacters = @"Character";
    }
    self.labelCounter.text = [NSString stringWithFormat:@"%lu %@", (unsigned long)[paramText length],
                              characterOrCharacters];
}
- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
 replacementString:(NSString *)string{
    if ([textField isEqual:self.myTextField]){
        NSString *wholeText =
        [textField.text stringByReplacingCharactersInRange:range
                                                withString:string];
        [self calculateAndDisplayTextFieldLengthWithText:wholeText];
    }
    return YES; }
- (BOOL)textFieldShouldReturn:(UITextField *)textField{ [textField resignFirstResponder];
    return YES;
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

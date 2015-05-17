//
//  myTextView.m
//  AdvanceCookbook
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "myTextView.h"

@interface myTextView ()
@property (nonatomic,strong) UITextView *textView;
@end

@implementation myTextView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
//    self.textView.text = @"Enter text here";
//    self.textView.textColor = [UIColor lightGrayColor];
//    self.textView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f);
//    self.textView.font = [UIFont systemFontOfSize:16.0f];
//    [self.view addSubview:self.textView];
    
    
    // Do any additional setup after loading the view from its nib.
}
- (void) handleKeyboardDidShow:(NSNotification *)paramNotification{
    /* Get the frame of the keyboard */
    NSValue *keyboardRectAsObject =
    [[paramNotification userInfo]
     objectForKey:UIKeyboardFrameEndUserInfoKey]; /* Place it in a CGRect */
    CGRect keyboardRect = CGRectZero;
    [keyboardRectAsObject getValue:&keyboardRect];
    /* Give a bottom margin to our text view that makes it
     reach to the top of the keyboard */
    self.textView.contentInset =
    UIEdgeInsetsMake(0.0f,
                     0.0f,
                     keyboardRect.size.height,
                     0.0f);
}
- (void) viewWillAppear:(BOOL)paramAnimated{
    [super viewWillAppear:paramAnimated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(handleKeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.text = @"Some text here...";
    self.textView.font = [UIFont systemFontOfSize:16.0f];
    [self.view addSubview:self.textView];
}
- (void) handleKeyboardWillHide:(NSNotification *)paramNotification{
    /* Make the text view as big as the whole view again */
    self.textView.contentInset = UIEdgeInsetsZero;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewWillDisappear:(BOOL)paramAnimated{
    [super viewWillDisappear:paramAnimated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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

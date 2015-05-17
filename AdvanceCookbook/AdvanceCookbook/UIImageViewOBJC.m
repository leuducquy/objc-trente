//
//  UIImageViewOBJC.m
//  AdvanceCookbook
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "UIImageViewOBJC.h"

@interface UIImageViewOBJC ()
@property (nonatomic,strong)UIImageView *myImage;

@end

@implementation UIImageViewOBJC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UIImage *images = [UIImage  imageNamed:@"macbookair.jpg"];
    self.myImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.myImage setImage:images];
    self.myImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.myImage];
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

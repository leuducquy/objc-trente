//
//  ScrollViewPaging.m
//  AdvanceCookbook
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ScrollViewPaging.h"

@interface ScrollViewPaging ()
@property (nonatomic,strong) UIScrollView *myScrollView;
@end

@implementation ScrollViewPaging

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *iPhone = [UIImage imageNamed:@"Iphone.jpg"];
    UIImage *iPad = [UIImage imageNamed:@"Ipad"];
    UIImage *macBookAir = [UIImage imageNamed:@"macbookair.jpg"];
    CGRect scrollViewRect = self.view.bounds;
    self.myScrollView = [[UIScrollView alloc] initWithFrame:scrollViewRect];
    self.myScrollView.pagingEnabled = YES;
    self.myScrollView.contentSize = CGSizeMake(scrollViewRect.size.width * 3.0f,
                                               scrollViewRect.size.height);
    [self.view addSubview:self.myScrollView];
    CGRect imageViewRect = self.view.bounds;
    UIImageView *iPhoneImageView = [self newImageViewWithImage:iPhone
                                                         frame:imageViewRect];
    [self.myScrollView addSubview:iPhoneImageView];
    /* Go to next page by moving the x position of the next image view */
    imageViewRect.origin.x += imageViewRect.size.width;
    UIImageView *iPadImageView = [self newImageViewWithImage:iPad
                                                       frame:imageViewRect];
    [self.myScrollView addSubview:iPadImageView];
    /* Go to next page by moving the x position of the next image view */
    imageViewRect.origin.x += imageViewRect.size.width;
    UIImageView *macBookAirImageView =
    [self newImageViewWithImage:macBookAir
                          frame:imageViewRect];
    [self.myScrollView addSubview:macBookAirImageView];
    // Do any additional setup after loading the view from its nib.
}
- (UIImageView *) newImageViewWithImage:(UIImage *)paramImage frame:(CGRect)paramFrame{
    UIImageView *result = [[UIImageView alloc] initWithFrame:paramFrame]; result.contentMode = UIViewContentModeScaleAspectFit;
    result.image = paramImage;
    return result;
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

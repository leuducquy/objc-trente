//
//  ScrollViewController.m
//  AdvanceCookbook
//
//  Created by MAC on 4/28/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong)UIScrollView *myScroll;
@property (nonatomic,strong)UIImageView *myImage;
@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"macbookair.jpg"]];
    //self.myScroll.contentMode = UIViewContentModeScaleAspectFill;
    self.myScroll.contentMode = UIViewContentModeScaleAspectFit;
    self.myScroll = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.myScroll addSubview:self.myImage];
    self.myScroll.contentSize = self.myImage.bounds.size;
    self.myScroll.delegate = self;
    self.myScroll.scrollEnabled = YES;
    //thanh cuon
    self.myScroll.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    
    [self.view addSubview:self.myScroll];
    // Do any additional setup after loading the view from its nib.
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{ /* Gets called when user scrolls or drags */ self.myScroll.alpha = 0.50f;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{ /* Gets called only after scrolling */ self.myScroll.alpha = 1.0f;
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    /* Make sure the alpha is reset even if the user is dragging */
    self.myScroll.alpha = 1.0f;
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

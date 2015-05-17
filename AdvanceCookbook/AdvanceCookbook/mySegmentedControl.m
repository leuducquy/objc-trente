//
//  mySegmentedControl.m
//  AdvanceCookbook
//
//  Created by MAC on 4/26/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "mySegmentedControl.h"

@interface mySegmentedControl ()
@property (nonatomic,strong) UISegmentedControl *mySegment;
@end

@implementation mySegmentedControl

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *segmenText = [[NSArray alloc] initWithObjects:@"Iphone",[UIImage imageNamed:@"Ipad.png"],@"Macbook", @"Imac", nil];
    self.mySegment = [[UISegmentedControl alloc] initWithItems:segmenText];
    CGRect segmentedFrame = self.mySegment.frame;
    segmentedFrame.size.height = 128.0f;
    segmentedFrame.size.width = 300.0f;
    self.mySegment.frame = segmentedFrame;
    self.mySegment.center = self.view.center;
    [self.mySegment addTarget:self action:@selector(changSegment:) forControlEvents:UIControlEventValueChanged];
    //self.mySegment.momentary = YES;
    
    [self.view addSubview:self.mySegment];
    // Do any additional setup after loading the view from its nib.
}
-(void)changSegment:(UISegmentedControl *)selectSegment {
    if ([selectSegment isEqual:self.mySegment]){
        
        NSUInteger indexSelected = [selectSegment selectedSegmentIndex];
        NSString *itemSelected = [selectSegment titleForSegmentAtIndex:indexSelected];
        NSLog(@"Selected %ld is %@",(long)indexSelected,itemSelected);
    }
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

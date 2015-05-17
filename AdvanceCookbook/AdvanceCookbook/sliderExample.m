//
//  sliderExample.m
//  AdvanceCookbook
//
//  Created by MAC on 4/26/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "sliderExample.h"

@interface sliderExample ()
@property (nonatomic,strong) UISlider *slider ;
@end

@implementation sliderExample

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 23.0f)];
    self.slider.center = self.view.center;
    self.slider.minimumValue = 0.0f;
    self.slider.maximumValue = 100.0f;
    self.slider.value = self.slider.maximumValue * 0.5;
    [self.slider addTarget:self action:@selector(sliderValueChanged:)
          forControlEvents:UIControlEventValueChanged];
    [self.slider setThumbImage:[UIImage imageNamed:@"thumbOfslider.jpeg"]
                      forState:UIControlStateNormal];
    self.slider.minimumTrackTintColor = [UIColor redColor]; /* Set the tint color of the thumb */
    self.slider.maximumTrackTintColor = [UIColor greenColor]; /* Set the tint color of the maximum value */
    self.slider.thumbTintColor = [UIColor purpleColor];
    [self.view addSubview:self.slider];
    // Do any additional setup after loading the view from its nib.
}
-(void)sliderValueChanged:(UISlider*)sliders {
    if([sliders isEqual:self.slider]){
        NSLog(@"value of slider is %f",sliders.value );
        
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

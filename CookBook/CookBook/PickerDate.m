//
//  PickerDate.m
//  CookBook
//
//  Created by MAC on 4/26/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "PickerDate.h"

@interface PickerDate ()
@property (nonatomic, strong) UIDatePicker *myPicker;
@end

@implementation PickerDate

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myPicker = [[UIDatePicker alloc] init];
   
    self.myPicker.center = self.view.center;
    
    [self.myPicker addTarget:self action:@selector(datePickerDateChanged:)
                forControlEvents:UIControlEventValueChanged];
    self.myPicker.datePickerMode = UIDatePickerModeTime;
    [self.view addSubview:self.myPicker];
    
    NSTimeInterval oneYearTime = 365 * 24 * 60 * 60;
    NSDate *todayDate = [NSDate date];
    NSDate *oneYearFromToday = [todayDate
                                dateByAddingTimeInterval:oneYearTime];
    NSDate *twoYearsFromToday = [todayDate
                                 dateByAddingTimeInterval:2 * oneYearTime];
    self.myPicker.minimumDate = oneYearFromToday;
    self.myPicker.maximumDate = twoYearsFromToday;
    NSDate *date = self.myPicker.date;
    NSTimeZone *timer = self.myPicker.timeZone;
    NSLog(@"Today is : %@"  ,date);
    NSLog(@"Now is %@" ,timer);
    // Do any additional setup after loading the view from its nib.
}
- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker
{
    if ([paramDatePicker isEqual:self.myPicker])
    {
        NSLog(@"Selected date = %@", paramDatePicker.date);
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

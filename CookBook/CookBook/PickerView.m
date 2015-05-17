//
//  PickerView.m
//  CookBook
//
//  Created by MAC on 4/26/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "PickerView.h"

@interface PickerView ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic,strong) UIPickerView *myPicker;
@end

@implementation PickerView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myPicker = [[UIPickerView alloc] init];
    self.myPicker.delegate = self;
    self.myPicker.dataSource = self;
    self.myPicker.center = self.view.center;
    [self.view addSubview:self.myPicker];
    // Do any additional setup after loading the view from its nib.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    if ([pickerView isEqual:self.myPicker]){
    /* Row is zero-based and we want the first row (with index 0) to be rendered as Row 1, so we have to +1 every row index */ return [NSString stringWithFormat:@" %ld", (long)row + 1];
    }
    return nil;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
   
        if ([pickerView isEqual:self.myPicker]){ return 10;
        }
        return 0;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    if ([pickerView isEqual:self.myPicker]){ return 1;
    }
    return 0;
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

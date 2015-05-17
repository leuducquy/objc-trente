//
//  DetailViewController.m
//  noteExample
//
//  Created by MAC on 5/9/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController (){
    NSMutableArray *array;
    NSString *dataBack ;
     
}

@property (weak, nonatomic) IBOutlet UITableView *mytableView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_Keys == 0) {
        array = [NSMutableArray arrayWithObjects:@"0",@"1",@"2", nil];
    }else {
        array = [NSMutableArray arrayWithObjects:@"4",@"5",@"6", nil];
    }
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section  {
    return [array count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //    NSArray *arrayCell = [NSArray arrayWithObjects:@"Cell0",@"Cell1",@"Cell2",@"Cell3",@"Cell4", nil];
    UITableViewCell *Cell;
    if (Cell == nil) {
        Cell  = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    }
    
    Cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return Cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   dataBack = [array objectAtIndex:indexPath.row];
    NSLog(@"%@",dataBack);
    if ([_delegate respondsToSelector:@selector(sendDataToA:)])
    {
    [_delegate sendDataToA:dataBack];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
    
}

-(void)viewWillDisappear:(BOOL)animated{
    
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

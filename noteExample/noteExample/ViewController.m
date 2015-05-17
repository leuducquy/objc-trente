//
//  ViewController.m
//  noteExample
//
//  Created by MAC on 5/9/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()<senddataProtocol>{
    UILabel *theData;
    UILabel *thedataTwo;
}

@end




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section  {
     return 2;
 }
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSArray *arrayCell = [NSArray arrayWithObjects:@"Cell0",@"Cell1",@"Cell2",@"Cell3",@"Cell4", nil];
    
    UITableViewCell *Cell  = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    switch (indexPath.row) {
        case 1:{
            
            thedataTwo = (UILabel*)[Cell viewWithTag:2];
            
             [thedataTwo setText:thedataTwo.text];
            
        }
            break;
        case 0: {
            theData = (UILabel*)[Cell viewWithTag:2];
            [theData setText:theData.text];

        }
        default:
            break;
    }
    
    UILabel *theLabel = (UILabel*)[Cell viewWithTag:1];
    [theLabel setText:@"Title"];
    
    return Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _Key =  indexPath.row;
        [self showMainMenu];
    NSLog(@"%@",theData);
}
-(void)sendDataToA:(NSString *)myStringData;{
    if (_Key == 0) {
        theData.text = myStringData;
    }else {
        thedataTwo.text = myStringData;
    }
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowMainMenu"])
    {
        // Get reference to the destination view controller
        DetailViewController *vc = [segue destinationViewController];
        vc.delegate = self;
        
        vc.Keys = _Key;
    }
    

}
- (void)showMainMenu {
    
    [self performSegueWithIdentifier:@"ShowMainMenu" sender:self];
}
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"%@",theData);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillDisappear:(BOOL)animated{
    
}

@end

//
//  MainScreen.m
//  DemoTable
//
//  Created by techmaster on 8/21/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "MainScreen.h"
#import "AppDelegate.h"
//Định nghĩa macro để tái sử dụng
#define TITLE @"title"
#define CLASS @"class"

@interface MainScreen ()
{
    NSArray* _menuData;
}
@end

@implementation MainScreen
- (void) initData
{
    _menuData = @[
                  @{TITLE: @"Section Table", CLASS: @"SectionTable"} ,
                  @{TITLE: @"Advanced Table", CLASS: @"AdvancedTable"}
                  ];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Demo TableView";
  
    [self initData];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
  //[self.view setFrame:CGRectMake(0, 40, 320, 800)];
    self.tableView.layer.cornerRadius = 15;
    self.tableView.clipsToBounds = YES;
    self.tableView.frame = CGRectMake(10, 10, 250, 250);
   
   UIWindow *windows = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.tableView.center = windows.center;
    
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [_menuData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString* cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        
    }
    // property row lay tu @interface NSIndexPath (UITableView)
    NSDictionary* menu = _menuData[indexPath.row];
    cell.textLabel.text = menu[TITLE];
    return cell;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)])
    {
        [tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([tableView respondsToSelector:@selector(setLayoutMargins:)])
    {
        [tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)])
    {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary* menu = _menuData[indexPath.row];
    NSString* class = menu[CLASS];
    
    UIViewController* viewController = [(UIViewController*)[NSClassFromString(class) alloc]
                                                           initWithNibName:@"SectionTable" bundle:nil];
    viewController.title = menu[TITLE];
    [self presentViewController:viewController animated:YES completion:nil];
    //[self.navigationController pushViewController:viewController animated:YES];
}
@end

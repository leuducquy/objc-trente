//
//  SectionTable.m
//  DemoTable
//
//  Created by techmaster on 8/21/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "SectionTable.h"
#define CONTINENT @"continent"
#define COUNTRIES @"countries"
#define COUNTRY @"country"
#define CAPITAL @"capital"
#import "inheritConStViewController.h"
@interface SectionTable ()
{
    NSArray *_data;
 }

@end
NSString * const PPRememberMusicList = @"Remember Music List";
NSString * const PPLoadMusicAtListLoad = @"Load music when loading list";
NSString * const PPAfterPlayingMusic = @"After playing music";
NSString * const PPGotoStartupAfterPlaying = @"Go to startup pos. after playing";
NSString * const ggg = @"ddd";
@implementation SectionTable

- (void)initData
{
    _data = @[
              @{CONTINENT: @"Africa",
                COUNTRIES: @[
                            @{COUNTRY:@"Nigeria", CAPITAL: @"Abuja"},
                            @{COUNTRY:@"Algeria", CAPITAL: @"Algiers"},
                            @{COUNTRY:@"Kenya", CAPITAL: @"Nairobi"}
                            ]
                },
              @{CONTINENT: @"Asia",
                COUNTRIES: @[
                        @{COUNTRY:@"Laos", CAPITAL: @"Vietiane"},
                        @{COUNTRY:@"Campuchia", CAPITAL: @"Phnom Penh"},
                        @{COUNTRY:@"Vietnam", CAPITAL: @"Hanoi"},
                        @{COUNTRY:@"Malaysia", CAPITAL: @"Kualumpur"},
                        ]
                }
              ];
              
                
                
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = YES;
    [_thisTableView setFrame:CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height)];
    [self initData];
    }

-(id)initWithName:(NSString *)name{
    _name = name;
    return self;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [_data count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary* continent = _data[section];
    NSArray* countries = continent[COUNTRIES];
    return [countries count];
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    NSDictionary* continent = _data[section];
    return continent[CONTINENT];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   
    static NSString* cellID = @"Cell1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    NSDictionary* continent = _data[indexPath.section];
    NSArray* countries = continent[COUNTRIES];
    NSDictionary* country = countries[indexPath.row];
    cell.textLabel.text = country[COUNTRY];    
    
    return cell;
}
//- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
//    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
//    
//    header.textLabel.textColor = [UIColor redColor];
//    header.textLabel.font = [UIFont boldSystemFontOfSize:18];
//    
//    header.textLabel.textAlignment = NSTextAlignmentCenter;
//}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)])
    {
        [tableView setSeparatorInset:UIEdgeInsetsMake(100, 0, 0, 0)];
    }
    
    if ([tableView respondsToSelector:@selector(setLayoutMargins:)])
    {
        [tableView setLayoutMargins:UIEdgeInsetsMake(10, 0, 0, 0)];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)])
    {
        [cell setLayoutMargins:UIEdgeInsetsMake(10, 0, 0, 0)];
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
//    UILabel *myLabel = [[UILabel alloc] init];
//    myLabel.frame = CGRectMake(10, 8, 320, 20);
//    myLabel.font = [UIFont boldSystemFontOfSize:18];
//    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
//    
//    UIView *headerView = [[UIView alloc] init];
//    [headerView addSubview:myLabel];
//
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 18)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 15, tableView.frame.size.width, 18)];
    [label setFont:[UIFont boldSystemFontOfSize:16]];
   // NSString *string =[list objectAtIndex:section];
    /* Section header is in 0th index... */
    [label setText:@"quy"];
    [view addSubview:label];
        return view;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 44;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01f;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    inheritConStViewController *vc = [[inheritConStViewController alloc]init];
   
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self presentViewController:vc animated:YES completion:nil];
    //[self.navigationController pushViewController:vc animated:YES];
}


@end

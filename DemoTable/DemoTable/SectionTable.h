//
//  SectionTable.h
//  DemoTable
//
//  Created by techmaster on 8/21/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SectionTable : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property NSString *name;
extern NSString * const PPRememberMusicList;
extern NSString * const PPLoadMusicAtListLoad;
extern NSString * const PPAfterPlayingMusic;
extern NSString * const PPGotoStartupAfterPlaying;
extern NSString * const ggg;
@property (weak, nonatomic) IBOutlet UITableView *thisTableView;
-(id)initWithName:(NSString*)name;
@end

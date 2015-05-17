//
//  Runprotocol.m
//  CookBook
//
//  Created by MAC on 4/24/15.
//  Copyright (c) 2015 leuducquy. All rights reserved.
//

#import "Runprotocol.h"
#import "Jaguar.h"
#import "ConsoleScreen.h"
@interface Runprotocol ()

@end

@implementation Runprotocol

- (void)viewDidLoad {
    [super viewDidLoad];
//    Jaguar *jarkind = [[Jaguar alloc] init];
//    [jarkind stringsArray ];
    //NSaray and mutablearray
    NSString *string1 = @"String 1";
    NSString *string2 = @"String 2";
    NSString *string3 = @"String 3";
    NSArray *immutableArray = @[string1,string2,string3];
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:immutableArray];
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    NSLog(@"%@",[mutableArray objectAtIndex:0]);
    [mutableArray removeObjectAtIndex:1];
    [mutableArray removeObjectAtIndex:0];
    
    
    //NSdictionary, mutabledictionnay
    NSDictionary *personInformation = @{@"firstname" : @"Leu Duc",@"lastname" : @"Quy",@"age" : @30};
   // NSLog(@"%@",personInformation);
    NSString *firstname = personInformation[@"firstname"];
    NSString *lastname = personInformation[@"lastname"];
    NSMutableDictionary *mutableDiction = [[ NSMutableDictionary alloc] initWithDictionary:personInformation];
    mutableDiction[@"firstname"] = @"lan";
    mutableDiction[@"age"] = @32;
    NSLog(@"%@", mutableDiction[@"firstname"]);
    NSLog(@"%@", mutableDiction[@"age"]);
    NSLog(@"%@  %@",firstname,lastname);
    
    
    //NSet, muatableset
    NSSet *shoppingList = [[NSSet alloc] initWithObjects:
                           @"Milk",
                           @"Bananas",
                           @"Bread",
                           @"Milk", nil];
    NSLog(@"Shopping list = %@", shoppingList);
    NSLog(@"%@", [shoppingList member:@"Milk"]);
    
    NSMutableSet *mutablelist = [NSMutableSet setWithSet:shoppingList];
    [mutablelist addObject:@"Yougurt"];
    [mutablelist removeObject:@"Bread"];
    NSLog(@"%@",[mutablelist member:@"Yougurt"]);
    
    
    //NSorderset , NSmutableset
    NSOrderedSet *setOfnumber = [NSOrderedSet  orderedSetWithArray:@[@4,@3,@2,@1]];
    NSLog(@"%@",setOfnumber);
    
    NSMutableOrderedSet *changNumber = [NSMutableOrderedSet orderedSetWithArray:@[@10,@20,@30,@40]];
    [changNumber exchangeObjectAtIndex:1 withObjectAtIndex:0];
    NSLog(@"%@",changNumber);
    [changNumber removeObjectAtIndex:0];
    [changNumber removeObject:@20];
    NSLog(@"%@", changNumber);
    [changNumber addObject:@10];
    [changNumber addObject:@20];
    NSLog(@"%@" , changNumber);
    
    // NScouterset
    NSCountedSet *setOfNumbers = [NSCountedSet setWithObjects:
                                  @10, @20, @10, @10, @30, nil];
    [setOfNumbers addObject:@20];
     NSLog(@"%@" , setOfNumbers);
    [setOfNumbers removeObject:@10];
    NSLog(@"Count for object @10 = %lu",
          (unsigned long)[setOfNumbers countForObject:@10]);
    NSLog(@"Count for object @20 = %lu",
          (unsigned long)[setOfNumbers countForObject:@20]);
    NSString *const kFirstNameKey = @"firstName";
    NSString *const kLastNameKey = @"lastName";
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setValue:@"Tim" forKey:kFirstNameKey];
    [dictionary setValue:@"Cook" forKey:kLastNameKey];
    __unused NSString *firstName = [dictionary valueForKey:kFirstNameKey];
    __unused NSString *lastName = [dictionary valueForKey:kLastNameKey];
   // NSMutableSet *mutablelist = [NSMutableSet setWithSet:shoppingList];
//    for (int i = 0 , i < [mutablelist count], i++); {
//        NSLog(@"%@",mutablelist[i]);
//    }
    NSLog(@"%ld",[mutableArray count]);
    for (id objc in mutableArray) {
        NSLog(@"%@",objc);
        [self writeln:objc];
    }
    
    // Do any additional setup after loading the view.
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

//
//  MyViewController.m
//  HomeTask1
//
//  Created by Ramiz on 10/16/15.
//  Copyright (c) 2015 Ramiz. All rights reserved.
//

#import "MyViewController.h"
#import "ViewGenerator.h"
#import "HistoryManager.h"

@interface MyViewController (){
    ViewGenerator *viewGenerator;
}

@end

@implementation MyViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    viewGenerator = [ViewGenerator new];
    [self initButtons];
}

-(void) addButtonClicked {
    UIView* newView = [viewGenerator generateRandomView];
    [self.view addSubview:newView];
    [[HistoryManager getInstance] addToQueue:newView];
    
}

-(void) removeButtonClicked {
    [viewGenerator removeLastView:[[HistoryManager getInstance] getFromQueue]];
}

- (void) initButtons {
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:addButton];
    [addButton setTitle:@"Add square" forState:(UIControlStateNormal)];
    [addButton setContentEdgeInsets:UIEdgeInsetsMake(8, 16, 8, 16)];
    [addButton sizeToFit];
    addButton.center = CGPointMake(80,
                                   [[UIScreen mainScreen] bounds].size.height-50);
    addButton.backgroundColor = [UIColor yellowColor];
    
    [addButton addTarget:self action:@selector(addButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *removeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:removeButton];
    [removeButton setTitle:@"Remove square" forState:(UIControlStateNormal)];
    [removeButton setContentEdgeInsets:UIEdgeInsetsMake(8, 16, 8, 16)];
    [removeButton sizeToFit];
    removeButton.center = CGPointMake(220,
                                   [[UIScreen mainScreen] bounds].size.height-50);
    removeButton.backgroundColor = [UIColor yellowColor];
    
    [removeButton addTarget:self action:@selector(removeButtonClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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

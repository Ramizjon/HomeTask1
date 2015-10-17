//
//  ViewGenerator.m
//  HomeTask1
//
//  Created by Ramiz on 10/16/15.
//  Copyright (c) 2015 Ramiz. All rights reserved.
//

#import "ViewGenerator.h"

@implementation ViewGenerator

-(id) init {
    if( self = [super init] )
    {
        colors = @[[UIColor greenColor], [UIColor redColor], [UIColor darkGrayColor],
                   [UIColor blueColor], [UIColor cyanColor], [UIColor yellowColor],
                   [UIColor orangeColor], [UIColor brownColor], [UIColor purpleColor]];
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        screenWidth = screenRect.size.width;
        screenHeight = screenRect.size.height;
    }
    
    return self;
 }


- (UIView*) generateRandomView {
    int randColor = arc4random_uniform([colors count]);
    int randX = arc4random_uniform(screenWidth-40);
    int randY = arc4random_uniform(screenHeight-120);
    
    CGRect rect = CGRectMake(randX, randY, 40, 40);
    UIView *view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = colors[randColor];
    return view;
}

- (void) removeLastView: (UIView*) view {
    [view removeFromSuperview];
    [[HistoryManager getInstance] removeLastView];
}

@end

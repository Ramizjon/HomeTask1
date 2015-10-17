//
//  HistoryManager.h
//  HomeTask1
//
//  Created by Ramiz on 10/17/15.
//  Copyright (c) 2015 Ramiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyViewController.h"

@interface HistoryManager : NSObject{
    NSMutableArray *viewsQueue;
}

+ (HistoryManager*) getInstance;
- (void) addToQueue: (UIView*) view;
- (UIView*) getFromQueue;
- (id) init;
- (void) removeLastView;

@end

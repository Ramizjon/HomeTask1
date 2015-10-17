//
//  HistoryManager.m
//  HomeTask1
//
//  Created by Ramiz on 10/17/15.
//  Copyright (c) 2015 Ramiz. All rights reserved.
//

#import "HistoryManager.h"

@implementation HistoryManager

static HistoryManager *instance = nil;

- (id)init
{
    self = [super init];
    if (self = [super init]) {
       viewsQueue =  [[NSMutableArray alloc] init];
    }
    return self;
}

+ (HistoryManager*) getInstance {
    if (instance == nil){
        instance = [HistoryManager new];
    }
    return instance;
}

- (void) addToQueue:(UIView *)view {
    [viewsQueue addObject:view];
}

- (UIView*) getFromQueue {
    return [viewsQueue lastObject];
}

- (void) removeLastView {
    [viewsQueue removeLastObject];
}

@end

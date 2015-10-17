//
//  ViewGenerator.h
//  HomeTask1
//
//  Created by Ramiz on 10/16/15.
//  Copyright (c) 2015 Ramiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HistoryManager.h"

@interface ViewGenerator : NSObject{
    NSArray *colors;
    float screenWidth;
    float screenHeight;
}

- (id) init;
- (UIView*) generateRandomView;
- (void) removeLastView: (UIView*) view;


@end

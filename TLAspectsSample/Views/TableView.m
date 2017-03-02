//
//  TableView.m
//  TLAspectsSample
//
//  Created by lichuanjun on 17/3/2.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "TableView.h"

@implementation TableView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    if (point.y < 0) {
        return NO;
    }
    return YES;
}

@end

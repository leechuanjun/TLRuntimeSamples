//
//  AppDelegate+Logging.m
//  TLAspectsSample
//
//  Created by lichuanjun on 17/3/2.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//


#import "AppDelegate+Logging.h"
#import "GLLogging.h"

@implementation AppDelegate (Logging)

- (void)setupLogging
{
    NSDictionary *config = @{
        @"MainViewController": @{
              GLLoggingPageImpression: @"page imp - main page",
              GLLoggingTrackedEvents: @[
                      @{
                          GLLoggingEventName: @"button one clicked",
                          GLLoggingEventSelectorName: @"buttonOneClicked:",
                          GLLoggingEventHandlerBlock: ^(id<AspectInfo> aspectInfo) {
                              NSLog(@"button one clicked");
                          },
                        },
                      @{
                          GLLoggingEventName: @"button two clicked",
                          GLLoggingEventSelectorName: @"buttonTwoClicked:",
                          GLLoggingEventHandlerBlock: ^(id<AspectInfo> aspectInfo) {
                              NSLog(@"button two clicked");
                          },
                        },
                      ],
        },

        @"DetailViewController": @{
              GLLoggingPageImpression: @"page imp - detail page",
        }
    };
    
    [GLLogging setupWithConfiguration:config];
}

@end

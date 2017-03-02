//
//  LoggingConfig.h
//  TLAspectsSample
//
//  Created by lichuanjun on 17/3/2.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <Aspects.h>


#define GLLoggingPageImpression @"GLLoggingPageImpression"
#define GLLoggingTrackedEvents @"GLLoggingTrackedEvents"
#define GLLoggingEventName @"GLLoggingEventName"
#define GLLoggingEventSelectorName @"GLLoggingEventSelectorName"
#define GLLoggingEventHandlerBlock @"GLLoggingEventHandlerBlock"

@interface GLLogging : NSObject

+ (void)setupWithConfiguration:(NSDictionary *)configs;

@end

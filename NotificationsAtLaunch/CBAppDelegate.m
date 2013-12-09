//
//  CBAppDelegate.m
//  NotificationsAtLaunch
//
//  Created by ly on 13-12-9.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "CBAppDelegate.h"

@implementation CBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 在系统启动时，打印所有系统发出的通知
    NSNotificationCenter *notiCenter = [NSNotificationCenter defaultCenter];
    [notiCenter addObserverForName:nil object:nil queue:nil usingBlock:^(NSNotification *note) {
        NSLog(@"%@", note.name);
    }];
    
    return YES;
}

@end

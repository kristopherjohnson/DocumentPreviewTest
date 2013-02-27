//
//  KDJAppDelegate.m
//  DocumentPreviewTest
//
//  Created by Kristopher Johnson on 2/27/13.
//  Copyright (c) 2013 Kristopher Johnson. All rights reserved.
//

#import "KDJAppDelegate.h"

#import "KDJViewController.h"

@implementation KDJAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[KDJViewController alloc] init];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

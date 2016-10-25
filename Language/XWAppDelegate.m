//
//  XWAppDelegate.m
//  Language
//
//  Created by viviwu on 2013/10/24.
//  Copyright © 2013年 viviwu. All rights reserved.
//

#import "XWAppDelegate.h"
#import "XWViewController.h"

@implementation XWAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    XWViewController * rootVC=[[XWViewController alloc]initWithNibName:@"XWViewController" bundle:[NSBundle mainBundle]];
    self.window.rootViewController=rootVC;
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)changeRootVC{
    
    [UIView animateWithDuration:0.5 animations:^{
        XWViewController * rootVC=[[XWViewController alloc]initWithNibName:@"XWViewController" bundle:currentBundle()];
        self.window.rootViewController=rootVC;
    }];
}

@end

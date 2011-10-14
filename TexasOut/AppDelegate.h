//
//  AppDelegate.h
//  TexasOut
//
//  Created by Zhang Zephyr on 11-9-22.
//  Copyright __MyCompanyName__ 2011年. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginScene.h"

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end

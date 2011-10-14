//
//  RegisterScene.m
//  TexasOut
//
//  Created by Zhang Zephyr on 11-9-26.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "RegisterScene.h"

@implementation RegisterScene

- (id)init {
    self = [super init];
    if (self) {
        //背景图
        CGSize screenSize = [[CCDirector sharedDirector] winSize];
        CCSprite *bgImage = [CCSprite spriteWithFile:@"bg_login.png"];
        [bgImage setPosition:CGPointMake(screenSize.width/2, screenSize.height/2)];
        [self addChild:bgImage z:0];
    }
    return self;
}

@end

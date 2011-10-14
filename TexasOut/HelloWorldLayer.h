//
//  HelloWorldLayer.h
//  TexasOut
//
//  Created by Zhang Zephyr on 11-9-22.
//  Copyright __MyCompanyName__ 2011年. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer <UITextFieldDelegate>
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end

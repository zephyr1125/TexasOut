//
//  HelloWorldLayer.m
//  TexasOut
//
//  Created by Zhang Zephyr on 11-9-22.
//  Copyright __MyCompanyName__ 2011年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"测试中文，下一行" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
        
        //尝试增加输入框
        UITextField *tfUsername = [[UITextField alloc] initWithFrame:CGRectMake(60, 165, 200, 90)];
        [tfUsername setDelegate:self];
        [tfUsername setText:@"input"];
        [tfUsername setTextColor:[UIColor redColor]];
        tfUsername.borderStyle = UITextBorderStyleRoundedRect;
        tfUsername.transform = CGAffineTransformMakeRotation(M_PI/2.0f);
        [[[[CCDirector sharedDirector] openGLView] window] addSubview:tfUsername];
        //[tfUsername becomeFirstResponder];
	}
	return self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    [textField endEditing:YES];
//    [textField removeFromSuperview];
    
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end

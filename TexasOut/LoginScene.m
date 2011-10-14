//
//  LoginScene.m
//  TexasOut
//
//  Created by mac on 11-9-24.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "LoginScene.h"

@implementation LoginScene

- (id)init {
    self = [super init];
    if (self) {
        //背景图
        CGSize screenSize = [[CCDirector sharedDirector] winSize];
        CCSprite *bgImage = [CCSprite spriteWithFile:@"bg_login.png"];
        [bgImage setPosition:CGPointMake(screenSize.width/2, screenSize.height/2)];
        [self addChild:bgImage z:0];
        
        //第一排
        float lineY = 388/2;
        
        //登陆文字
        float loginTextViewHeight = 52/2;
        CCLabelTTF *labelLogin = [CCLabelTTF labelWithString:@"账    号" fontName:@"STHeitiSC-Medium" fontSize:16];
        [labelLogin setPosition:CGPointMake(64/2, lineY+loginTextViewHeight/2)];
        [labelLogin setAnchorPoint:ccp(0,0.5f)];
        [self addChild:labelLogin z:1];
        
        //登陆文字框
        CGRect tfRect = CGRectMake(224/2, lineY, 502/2, loginTextViewHeight);
        UITextField *_tfUsername = [[UITextField alloc] initWithFrame:[Utils toUIRect:tfRect]];
        [_tfUsername setDelegate:self];
        [_tfUsername setPlaceholder:@"用户名/邮箱"];
        [_tfUsername setTextColor:[UIColor blackColor]];
        _tfUsername.borderStyle = UITextBorderStyleRoundedRect;
        _tfUsername.transform = CGAffineTransformMakeRotation(M_PI/2.0f);
        tfUsername = [_tfUsername retain];
        [[[[CCDirector sharedDirector] openGLView] window] addSubview:_tfUsername];
        
        //创建账号按钮
        CCMenuItem *registerMenuItem = [CCMenuItemImage itemFromNormalImage:@"bt_register.png" selectedImage:@"bt_register_sel.png" target:self selector:@selector(registerButtonTapped:)];
        [registerMenuItem setAnchorPoint:ccp(0,0.5f)];
        registerMenuItem.position = ccp(740/2, lineY+loginTextViewHeight/2);   
        
        //第二排
        lineY = 284/2;
        
        //密码文字
        CCLabelTTF *labelPassword = [CCLabelTTF labelWithString:@"密    码" fontName:@"STHeitiSC-Medium" fontSize:16];
        [labelPassword setPosition:CGPointMake(64/2, lineY+loginTextViewHeight/2)];
        [labelPassword setAnchorPoint:ccp(0,0.5f)];
        [self addChild:labelPassword z:1];
        
        //密码文字框
        tfRect = CGRectMake(224/2, lineY, 502/2, loginTextViewHeight);
        UITextField *_tfPassword = [[UITextField alloc] initWithFrame:[Utils toUIRect:tfRect]];
        [_tfPassword setDelegate:self];
        [_tfPassword setPlaceholder:@"您的密码"];
        [_tfPassword setTextColor:[UIColor blackColor]];
        _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
        _tfPassword.transform = CGAffineTransformMakeRotation(M_PI/2.0f);
        tfPassword = [_tfPassword retain];
        [[[[CCDirector sharedDirector] openGLView] window] addSubview:_tfPassword];
        
        //忘记密码按钮
        CCMenuItem *forgetMenuItem = [CCMenuItemImage itemFromNormalImage:@"bt_forget.png" selectedImage:@"bt_forget_sel.png" target:self selector:@selector(forgetButtonTapped:)];
        [forgetMenuItem setAnchorPoint:ccp(0,0.5f)];
        forgetMenuItem.position = ccp(740/2, lineY+loginTextViewHeight/2);   
        
        //第三排
        lineY = 120/2;
        //登陆按钮
        CCMenuItem *loginMenuItem = [CCMenuItemImage itemFromNormalImage:@"bt_login.png" selectedImage:@"bt_login_sel.png" target:self selector:@selector(loginButtonTapped:)];
        [loginMenuItem setAnchorPoint:ccp(0,0)];
        loginMenuItem.position = ccp(222/2, lineY); 
        //退出按钮
        CCMenuItem *exitMenuItem = [CCMenuItemImage itemFromNormalImage:@"bt_exit.png" selectedImage:@"bt_exit_sel.png" target:self selector:@selector(exitButtonTapped:)];
        [exitMenuItem setAnchorPoint:ccp(0,0)];
        exitMenuItem.position = ccp(556/2, lineY);  
        
        //所有按钮的manager
        CCMenu *starMenu = [CCMenu menuWithItems:registerMenuItem, forgetMenuItem, loginMenuItem, exitMenuItem, nil];
        starMenu.position = CGPointZero;
        [self addChild:starMenu]; 
    }
    return self;
}

- (void)registerButtonTapped:(id)sender {
    //切入注册页面
    //先隐藏所有输入框
    [tfUsername removeFromSuperview];
    [tfPassword removeFromSuperview];
    [[CCDirector sharedDirector] replaceScene:[RegisterScene node]];
}

- (void)forgetButtonTapped:(id)sender {
    
}

- (void)loginButtonTapped:(id)sender {
    
}

- (void)exitButtonTapped:(id)sender {
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField*)textField{
    [textField endEditing:YES];
    //    [textField removeFromSuperview];
    
}

@end

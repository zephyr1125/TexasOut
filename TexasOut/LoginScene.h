//
//  LoginScene.h
//  TexasOut
//
//  Created by mac on 11-9-24.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Utils.h"
#import "RegisterScene.h"

@interface LoginScene : CCScene <UITextFieldDelegate>{
    UITextField *tfUsername;
    UITextField *tfPassword;
}

@end

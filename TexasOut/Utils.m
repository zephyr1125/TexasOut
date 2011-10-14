//
//  Utils.m
//  TexasOut
//
//  Created by Zhang Zephyr on 11-9-26.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+(CGRect)toUIRect:(CGRect)cgRect{
    float x = cgRect.origin.y-(cgRect.size.width/2-cgRect.size.height/2);
    float y = cgRect.origin.x+(cgRect.size.width/2-cgRect.size.height/2);
    return CGRectMake(x, y, cgRect.size.width, cgRect.size.height);
    
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    NSMakeCollectable(theUUID);
    NSString *nonce = (NSString *)string;
}

@end

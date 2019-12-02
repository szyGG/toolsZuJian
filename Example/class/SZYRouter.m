//
//  SZYRouter.m
//  toolsZuJian_Example
//
//  Created by 史宗运 on 2019/12/2.
//  Copyright © 2019 szyGG. All rights reserved.
//

#import "SZYRouter.h"



@implementation SZYRouter

+ (id)objectForURL:(NSString *)URL withUserInfo:(NSDictionary *)userInfo
{
   id obj = [super objectForURL:URL withUserInfo:userInfo];
    if (obj == nil)
    {
        NSLog(@"URL = %@ 所指向的对象为空",URL);
    }
    return obj;
}

+ (void)openURL:(NSString *)URL
{
    if ([self canOpenURL:URL])
    {
        [super openURL:URL];
    }
    else
    {
        NSLog(@"URL = %@ 没有注册",URL);
    }
    
}

+ (void)openURL:(NSString *)URL completion:(void (^)(id result))completion
{
    if ([super canOpenURL:URL])
    {
        [super openURL:URL completion:completion];
    }
    else
    {
        NSLog(@"URL = %@ 没有注册",URL);
    }
}
+ (void)openURL:(NSString *)URL withUserInfo:(NSDictionary *)userInfo completion:(void (^)(id result))completion
{
    if ([super canOpenURL:URL])
    {
        [super openURL:URL withUserInfo:userInfo completion:completion];
    }
    else
    {
        NSLog(@"URL = %@ 没有注册",URL);
    }
}


@end

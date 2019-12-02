//
//  SZYRouter.h
//  toolsZuJian_Example
//
//  Created by 史宗运 on 2019/12/2.
//  Copyright © 2019 szyGG. All rights reserved.
//

#import <MGJRouter/MGJRouter.h>

//MGRouter注册
#define CLASS_URL  [NSString stringWithFormat:@"ngariDoctor://%@/%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleExecutableKey],NSStringFromClass(self)]

#define Method_URL(method)  [NSString stringWithFormat:@"ngariDoctor://%@/%@/%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleExecutableKey],NSStringFromClass(self),method]

#define URL_FOR_Method(class,method) [NSString stringWithFormat:@"ngariDoctor://%@/%@/%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleExecutableKey],class,method]

#define URL_FOR_CLASS(class) [NSString stringWithFormat:@"ngariDoctor://%@/%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleExecutableKey],(class)]

@interface SZYRouter : MGJRouter

@end



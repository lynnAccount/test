//
//  UIView+TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "UIView+TaikoSignal.h"

#import <objc/runtime.h>
//#import "UIView+BlocksKit.h"
#import "UIControl+TaikoSignal.h"

static const char kTaikoSignalKey;
//static const char kTaikoSignalTypeKey;
static const char kTaikoPreferedSourceKey;

@implementation UIView(TaikoSignal)

@dynamic signal;
@dynamic signalType;
@dynamic preferedSource;

- (void)setSignal:(NSString *)signal
{
    objc_setAssociatedObject( self, &kTaikoSignalKey, signal, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

- (NSString *)signal
{
    return 	objc_getAssociatedObject(self, &kTaikoSignalKey);
}

- (void)setPreferedSource:(id)preferedSource
{
    objc_setAssociatedObject( self, &kTaikoPreferedSourceKey, preferedSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

- (id)preferedSource
{
    return 	objc_getAssociatedObject(self, &kTaikoPreferedSourceKey);
}

#pragma mark - config signal routes

- (NSString *)signalNamespace
{
    return [[self class] description];
}

- (NSString *)signalTag
{
    return self.signal;
}

- (NSString *)sam_domTag
{
    return [[self class] description];
}

- (NSString *)signalDescription
{
    if ( [self sam_domTag] && self.signal )
    {
        return [NSString stringWithFormat:@"%@, <%@ id='%@'/>", [[self class] description], [self sam_domTag], self.signal];
    }
    else if ( [self sam_domTag] )
    {
        return [NSString stringWithFormat:@"%@, <%@/>", [[self class] description], [self sam_domTag]];
    }
    else
    {
        return [NSString stringWithFormat:@"%@", [[self class] description]];
    }
}

- (id)signalResponders
{
    NSObject * nextResponder = [super signalResponders];
    if (nextResponder != nil) {
        // 优先调用父类的接受者
        return nextResponder;
    }
    
    nextResponder = [self nextResponder];
    
    if ( nextResponder && [nextResponder isKindOfClass:[UIViewController class]] )
    {
        return nextResponder;
    }
    else
    {
        return self.superview;
    }
}

- (id)signalAlias
{
    NSMutableArray * array = [NSMutableArray array];
    
//    if ( self.signal && [self sam_domTag] )
//    {
//        //		[array addObject:[NSString stringWithFormat:@"tag$$%@____id$$%@", [self sam_domTag], self.signal]];
//        [array addObject:[NSString stringWithFormat:@"%@____%@", [self sam_domTag], self.signal]];
//    }
//    
//    if ( [self sam_domTag] )
//    {
//        //		[array addObject:[NSString stringWithFormat:@"tag$$%@", [self sam_domTag]]];
//        [array addObject:[self sam_domTag]];
//    }
    
    if ( self.signal )
    {
        //		[array addObject:[NSString stringWithFormat:@"id$$%@", self.signal]];
        [array addObject:self.signal];
    }
    
    return array;
}

@end

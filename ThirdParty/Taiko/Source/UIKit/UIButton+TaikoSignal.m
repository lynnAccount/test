//
//  UIButton+TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "UIButton+TaikoSignal.h"
#import "UIControl+TaikoSignal.h"

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

@implementation UIButton (TaikoSignal)

- (void)setSignal:(NSString *)signal
{
	[super setSignal:signal];
	
    [self addTarget:self action:@selector(_taiko_click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)_taiko_click:(id)sender
{
    [self sendSignal:UIControl.click];
}

@end

#endif	// #if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

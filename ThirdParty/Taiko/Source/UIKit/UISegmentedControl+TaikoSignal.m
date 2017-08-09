//
//  UISegmentedControl+TaikoSignal.m
//  gaibianjia
//
//  Created by QFish on 6/14/15.
//  Copyright (c) 2015 Geek Zoo Studio. All rights reserved.
//

#import "UISegmentedControl+TaikoSignal.h"
#import "UIView+TaikoSignal.h"
#import "UIControl+TaikoSignal.h"

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

@implementation UISegmentedControl (TaikoSignal)

- (void)setSignal:(NSString *)signal
{
	[super setSignal:signal];
	
	[self addTarget:self action:@selector(_taiko_valueChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)_taiko_valueChanged:(id)sender
{
	[self sendSignal:UIControl.valueChanged withObject:sender];
}

@end

#endif	// #if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

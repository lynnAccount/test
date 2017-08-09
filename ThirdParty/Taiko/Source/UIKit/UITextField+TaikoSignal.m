//
//  UITextField+TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "UITextField+TaikoSignal.h"
#import "UIView+TaikoSignal.h"
#import "UIControl+TaikoSignal.h"

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

@implementation UITextField (TaikoSignal)

- (void)setSignal:(NSString *)signal
{
	[super setSignal:signal];
	
	[self addTarget:self action:@selector(_taiko_editingChanged:) forControlEvents:UIControlEventEditingChanged];
	[self addTarget:self action:@selector(_taiko_editingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
}

- (void)_taiko_editingChanged:(id)sender
{
	[self sendSignal:self.editingChanged withObject:sender];
}

- (void)_taiko_editingDidEnd:(id)sender
{
    [self sendSignal:self.editingDidEnd withObject:sender];
}

@end

#endif	// #if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)
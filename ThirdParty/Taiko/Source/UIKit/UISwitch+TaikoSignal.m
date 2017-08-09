//
//  UISwitch+TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "UISwitch+TaikoSignal.h"
#import "UIControl+TaikoSignal.h"

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

@implementation UISwitch (TaikoSignal)

- (void)setSignal:(NSString *)signal
{
    [super setSignal:signal];
    
    [self addTarget:self action:@selector(_taiko_valueChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)_taiko_valueChanged:(id)sender
{
    [self sendSignal:self.valueChanged withObject:sender];
}

@end

#endif	// #if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

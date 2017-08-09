//
//  UIControl+TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "UIControl+TaikoSignal.h"
//#import "_pragma_push.h"

#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)

// ----------------------------------
// Source code
// ---------------------------------

@implementation UIControl (TaikoSignal)

@def_signal(touchDown)           // UIControlEventTouchDown
@def_signal(touchDownRepeat)     // UIControlEventTouchDownRepeat
@def_signal(touchDragInside)     // UIControlEventTouchDragInside
@def_signal(touchDragOutside)    // UIControlEventTouchDragOutside
@def_signal(touchDragEnter)      // UIControlEventTouchDragEnter
@def_signal(touchDragExit)       // UIControlEventTouchDragExit
@def_signal(click)               // UIControlEventTouchUpInside
@def_signal(touchUpOutside)      // UIControlEventTouchUpOutside
@def_signal(touchCancel)         // UIControlEventTouchCancel

@def_signal(valueChanged)        // UIControlEventValueChanged

@def_signal(editingDidBegin)     // UIControlEventEditingDidBegin
@def_signal(editingChanged)      // UIControlEventEditingChanged
@def_signal(editingDidEnd)       // UIControlEventEditingDidEnd
@def_signal(editingDidEndOnExit) // UIControlEventEditingDidEndOnExit

//- (void)setSignal:(NSString *)signal
//{
//    [super setSignal:signal];

//    [self addTarget:self action:@selector(_taiko_touchDown:) forControlEvents:UIControlEventTouchDown];
//    [self addTarget:self action:@selector(_taiko_touchDownRepeat:) forControlEvents:UIControlEventTouchDownRepeat];
//    [self addTarget:self action:@selector(_taiko_touchDragInside:) forControlEvents:UIControlEventTouchDragInside];
//    [self addTarget:self action:@selector(_taiko_touchDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
//    [self addTarget:self action:@selector(_taiko_touchDragEnter:) forControlEvents:UIControlEventTouchDragEnter];
//    [self addTarget:self action:@selector(_taiko_touchDragExit:) forControlEvents:UIControlEventTouchDragExit];
//    [self addTarget:self action:@selector(_taiko_click:) forControlEvents:UIControlEventTouchUpInside];
//    [self addTarget:self action:@selector(_taiko_touchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
//    [self addTarget:self action:@selector(_taiko_touchCancel:) forControlEvents:UIControlEventTouchCancel];
//    [self addTarget:self action:@selector(_taiko_valueChanged:) forControlEvents:UIControlEventValueChanged];
//    [self addTarget:self action:@selector(_taiko_editingDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
//    [self addTarget:self action:@selector(_taiko_editingChanged:) forControlEvents:UIControlEventEditingChanged];
//    [self addTarget:self action:@selector(_taiko_editingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
//    [self addTarget:self action:@selector(_taiko_editingDidEndOnExit:) forControlEvents:UIControlEventEditingDidEndOnExit];
//}

//- (void)_taiko_touchDown:(id)sender
//{
//    [self sendSignal:UIControl.touchDown];
//}
//
//- (void)_taiko_touchDownRepeat:(id)sender
//{
//    [self sendSignal:UIControl.touchDownRepeat];
//}
//
//- (void)_taiko_touchDragInside:(id)sender
//{
//    [self sendSignal:UIControl.touchDragInside];
//}
//
//- (void)_taiko_touchDragOutside:(id)sender
//{
//    [self sendSignal:UIControl.touchDragOutside];
//}
//
//- (void)_taiko_touchDragEnter:(id)sender
//{
//    [self sendSignal:UIControl.touchDragEnter];
//}
//
//- (void)_taiko_touchDragExit:(id)sender
//{
//    [self sendSignal:UIControl.touchDragExit];
//}
//
//- (void)_taiko_click:(id)sender
//{
//    [self sendSignal:UIControl.click];
//}
//
//- (void)_taiko_touchUpOutside:(id)sender
//{
//    [self sendSignal:UIControl.touchUpOutside];
//}
//
//- (void)_taiko_touchCancel:(id)sender
//{
//    [self sendSignal:UIControl.touchCancel];
//}
//
//- (void)_taiko_valueChanged:(id)sender
//{
//    [self sendSignal:UIControl.valueChanged];
//}
//
//- (void)_taiko_editingDidBegin:(id)sender
//{
//    [self sendSignal:UIControl.editingDidBegin];
//}
//
//- (void)_taiko_editingChanged:(id)sender
//{
//    [self sendSignal:UIControl.editingChanged];
//}
//
//- (void)_taiko_editingDidEnd:(id)sender
//{
//    [self sendSignal:UIControl.editingDidEnd];
//}
//
//- (void)_taiko_editingDidEndOnExit:(id)sender
//{
//    [self sendSignal:UIControl.editingDidEndOnExit];
//}

@end

//#import "_pragma_pop.h"

#endif	// #if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)


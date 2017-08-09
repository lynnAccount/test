//
//     ____    _                        __     _      _____
//    / ___\  /_\     /\/\    /\ /\    /__\   /_\     \_   \
//    \ \    //_\\   /    \  / / \ \  / \//  //_\\     / /\/
//  /\_\ \  /  _  \ / /\/\ \ \ \_/ / / _  \ /  _  \ /\/ /_
//  \____/  \_/ \_/ \/    \/  \___/  \/ \_/ \_/ \_/ \____/
//
//	Copyright Samurai development team and other contributors
//
//	http://www.samurai-framework.com
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//	THE SOFTWARE.
//

//#import "Samurai_Core.h"

#import "Samurai_Signal.h"
#import "UIView+TaikoSignal.h"

#pragma mark -

@interface UIControl (TaikoSignal)

/**
 *  Common UIControlEvent signal
 */
@signal(touchDown)           // UIControlEventTouchDown
@signal(touchDownRepeat)     // UIControlEventTouchDownRepeat
@signal(touchDragInside)     // UIControlEventTouchDragInside
@signal(touchDragOutside)    // UIControlEventTouchDragOutside
@signal(touchDragEnter)      // UIControlEventTouchDragEnter
@signal(touchDragExit)       // UIControlEventTouchDragExit
@signal(click)               // UIControlEventTouchUpInside
@signal(touchUpOutside)      // UIControlEventTouchUpOutside
@signal(touchCancel)         // UIControlEventTouchCancel

/**
 *  UISlider, UISwitch, UIStepper, UISegmentControl, etc.
 */
@signal(valueChanged)        // UIControlEventValueChanged

/**
 *  UITextFiled
 */
@signal(editingDidBegin)     // UIControlEventEditingDidBegin
@signal(editingChanged)      // UIControlEventEditingChanged
@signal(editingDidEnd)       // UIControlEventEditingDidEnd
@signal(editingDidEndOnExit) // UIControlEventEditingDidEndOnExit

#define touchDown
#undef  touchDown
#define touchDownRepeat
#undef  touchDownRepeat
#define touchDragInside
#undef  touchDragInside
#define touchDragOutside
#undef  touchDragOutside
#define touchDragEnter
#undef  touchDragEnter
#define touchDragExit
#undef  touchDragExit
#define click
#undef  click
#define touchUpOutside
#undef  touchUpOutside
#define touchCancel
#undef  touchCancel
#define valueChanged
#undef  valueChanged
#define editingDidBegin
#undef  editingDidBegin
#define editingChanged
#undef  editingChanged
#define editingDidEnd
#undef  editingDidEnd
#define editingDidEndOnExit
#undef  editingDidEndOnExit

@end

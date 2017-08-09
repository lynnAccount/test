//
//  Taiko.h
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SamuraiSignal+TaikoSignal.h"
#import "UIView+TaikoSignal.h"
#import "UIControl+TaikoSignal.h"
#import "UIButton+TaikoSignal.h"
#import "UISlider+TaikoSignal.h"
#import "UISwitch+TaikoSignal.h"

#undef  ib
#define	ib( x )		x

#undef	event
#define	event( x )	x

#define TAIKO_DEBUG 1

#if TAIKO_DEBUG
#define INFO NSLog
#define PERF NSLog
#define WARN NSLog
#define ERROR NSLog
#define PRINT NSLog

#else // #if TAIKO_DEBUG

#define INFO( ... ) NSLog
#define PERF( ... ) NSLog
#define WARN( ... ) NSLog
#define ERROR( ... )    NSLog
#define PRINT( ... ) NSLog

#endif // #if TAIKO_DEBUG

@interface Taiko : NSObject
@end

//
//  UIView+TaikoSignal.h
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TaikoSignalable <NSObject>
@property (nonatomic, strong) NSString * signal;
@property (nonatomic, strong) NSString * signalType;
@property (nonatomic, strong) id preferedSource;
@end

@interface UIView (TaikoSignal)<TaikoSignalable>
@end

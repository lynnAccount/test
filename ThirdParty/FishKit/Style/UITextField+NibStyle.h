//
//  UITextField+NibStyle.h
//  gaibianjia
//
//  Created by QFish on 6/19/15.
//  Copyright (c) 2015 Geek Zoo Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (NibStyle)
@property (nonatomic, assign) NSInteger nibMaxLength; // 限制最大输入长度
@property (nonatomic, assign) BOOL nibMustBeNumberic; // 限制输入数字
@end

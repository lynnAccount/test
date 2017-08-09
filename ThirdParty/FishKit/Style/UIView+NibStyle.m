//
//  UIView+NibStyle.m
//  mplus
//
//  Created by QFish on 10/16/14.
//  Copyright (c) 2014 geek-zoo. All rights reserved.
//

#import "UIView+NibStyle.h"
#import "UIColor+FishKit.h"

@implementation UIView (NibStyle)

@dynamic nibBackgroundColor;
@dynamic nibBorderColor, nibBorderWidth;
@dynamic nibCornerRadius;
@dynamic nibAlpha;

- (void)setNibBackgroundColor:(NSString *)nibBackgroundColor
{
	self.backgroundColor = [UIColor colorWithHexString:nibBackgroundColor];
}

- (void)setNibBorderWidth:(NSNumber *)nibBorderWidth
{
	self.layer.borderWidth = nibBorderWidth.floatValue;
}

+ (UIColor *)colorWithAny:(id)any
{
	if ( [any isKindOfClass:[NSString class]] ) {
		return [UIColor colorWithHexString:any];
	} else if ( [any isKindOfClass:[UIColor class]] ) {
		return (UIColor *)any;
	} else {
		return nil;
	}
}

- (void)setNibBorderColor:(id)nibBorderColor
{
	UIColor * color = [UIView colorWithAny:nibBorderColor];
	if ( color ) {
		self.layer.borderColor =color.CGColor;
    }
}

- (void)setNibCornerRadius:(NSNumber *)nibCornerRadius
{
	self.layer.masksToBounds = YES;
	self.layer.cornerRadius = nibCornerRadius.floatValue;
}

- (void)setNibAlpha:(NSNumber *)nibAlpha
{
	self.alpha = nibAlpha.floatValue;
}

// TODO("待修改")
- (void)setNibCornerAutoRadius:(NSString *)nibCornerAutoRadius
{
	NSArray * arrays = [nibCornerAutoRadius componentsSeparatedByString:@" "];
	
	int radius = 0;
	
	NSString * topLeft = arrays[0];
	NSString * topRight = arrays[1];
	NSString * bottomLeft = arrays[2];
	NSString * bottomRight = arrays[3];
	
	UIRectCorner opt = 0x00;
	
	if ( topLeft.intValue ) {
		radius = topLeft.intValue;
		opt |= UIRectCornerTopLeft;
	}
	
	if ( topRight.intValue ) {
		radius = topRight.intValue;
		opt |= UIRectCornerTopRight;
	}
	
	if ( bottomLeft.intValue ) {
		radius = bottomLeft.intValue;
		opt |= UIRectCornerBottomLeft;
	}
	
	if ( bottomRight.intValue ) {
		radius = bottomRight.intValue;
		opt |= UIRectCornerBottomRight;
	}

	UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:opt cornerRadii:CGSizeMake(radius, radius)];
	CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
	maskLayer.frame = self.bounds;
	maskLayer.path = maskPath.CGPath;
	maskLayer.masksToBounds = YES;
	self.layer.mask = maskLayer;
}


@end

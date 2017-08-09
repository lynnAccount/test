    //
//  UITextField+NibStyle.m
//  gaibianjia
//
//  Created by QFish on 6/19/15.
//  Copyright (c) 2015 Geek Zoo Studio. All rights reserved.
//

#import <objc/runtime.h>
#import "UITextField+NibStyle.h"

BOOL NSStringCheckIsNumber(NSString * string)
{
    NSString *		regex = @"[0-9]+";
    NSPredicate *	pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:string];
}

static const char kUITextFieldNibMaxLegnthKey;
static const char kUITextFieldNibMustBeNumbericKey;

@implementation UITextField (NibStyle)

@dynamic nibMaxLength;
@dynamic nibMustBeNumberic;

- (void)setNibMaxLength:(NSInteger)nibMaxLength
{
	objc_setAssociatedObject(self, &kUITextFieldNibMaxLegnthKey, @(nibMaxLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	
//	self.bk_shouldChangeCharactersInRangeWithReplacementStringBlock = ^(UITextField * textField, NSRange range, NSString * string)
//	{
//		NSString * text = [textField.text stringByReplacingCharactersInRange:range withString:string];
//		
//		if ( nibMaxLength > 0 && text.length > nibMaxLength )
//		{
//			return NO;
//		}
//		
//		return YES;
//	};
}

- (BOOL)nibMustBeNumberic
{
	return [objc_getAssociatedObject(self, &kUITextFieldNibMaxLegnthKey) integerValue];
}

- (void)setNibMustBeNumberic:(BOOL)nibMustBeNumberic
{
    objc_setAssociatedObject(self, &kUITextFieldNibMustBeNumbericKey, @(nibMustBeNumberic), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
//    self.bk_shouldChangeCharactersInRangeWithReplacementStringBlock = ^(UITextField * textField, NSRange range, NSString * string)
//    {
//        NSString * text = [textField.text stringByReplacingCharactersInRange:range withString:string];
//        
//        if ( nibMustBeNumberic && text.length && !NSStringCheckIsNumber(text) )
//        {
//            return NO;
//        }
//        
//        return YES;
//    };
}

- (NSInteger)nibMaxLength
{
    return [objc_getAssociatedObject(self, &kUITextFieldNibMustBeNumbericKey) boolValue];
}

@end

//
//  NSNumber+FishKit.m
//  xueyou
//
//  Created by QFish on 7/11/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "NSNumber+FishKit.h"

@implementation NSNumber (FishKit)

- (NSString *)currencyString
{
	static NSNumberFormatter * formatter = nil;
	
	if ( !formatter )
	{
		formatter = [[NSNumberFormatter alloc]init];
		[formatter setGroupingSeparator:@","];
		[formatter setGroupingSize:3];
		[formatter setUsesGroupingSeparator:YES];
	}
	
	return [formatter stringFromNumber:self];
}

- (NSString *)durationString
{
    NSInteger mm = self.integerValue / 60;
    NSInteger ss = self.integerValue % 60;
    
    NSMutableString * string = [NSMutableString string];
    
    if ( mm == 0 ) {
        [string appendString:@"00"];
    } else  if ( mm < 10 ) {
        [string appendFormat:@"0%zd", mm];
    } else {
        [string appendFormat:@"%zd", mm];
    }
    
    [string appendString:@":"];
    
    if ( ss == 0 ) {
        [string appendString:@"00"];
    } else  if ( ss < 10 ) {
        [string appendFormat:@"0%zd", ss];
    } else {
        [string appendFormat:@"%zd", ss];
    }
    
    return string;
}

@end

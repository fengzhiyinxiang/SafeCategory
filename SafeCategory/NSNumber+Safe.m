//
//  NSNumber+safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSNumber+Safe.h"

@implementation NSNumber (Safe)

- (BOOL)safeIsEqualToNumber:(NSNumber *)number
{
    if (number) {
        return [self isEqualToNumber:number];
    } else {
        return NO;
    }
}

- (NSComparisonResult)safeCompare:(NSNumber *)otherNumber
{    
    if (otherNumber) {
        return [self compare:otherNumber];
    } else {
        return NSOrderedDescending;
    }
}

@end

//
//  NSArray+safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)

- (id)safeObjectAtIndex:(NSUInteger)index
{    
    if (index < self.count) {
        return [self objectAtIndex:index];
    } else {
        return nil;
    }
}

- (NSArray *)safeSubarrayWithRange:(NSRange)range
{    
    if (range.location + range.length <= self.count) {
        return [self subarrayWithRange:range];
    }else {
        return nil;
    }
}

- (NSUInteger)safeIndexOfObject:(id)anObject
{
    if (anObject) {
        return [self indexOfObject:anObject];
    } else {
        return 0;
    }
}

@end

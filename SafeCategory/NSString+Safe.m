//
//  NSString+safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSString+Safe.h"

@implementation NSString (Safe)

- (NSString *)safeSubstringFromIndex:(NSUInteger)from
{
    if (from <= self.length) {
        return [self substringFromIndex:from];
    } else {
        return nil;
    }
}

- (NSString *)safeSubstringToIndex:(NSUInteger)to
{
    if (to <= self.length) {
        return [self substringToIndex:to];
    } else {
        return nil;
    }
}

- (NSString *)safeSubstringWithRange:(NSRange)range
{
    NSUInteger location = range.location;
    NSUInteger length = range.length;
    if (location + length <= self.length) {
        return [self substringWithRange:range];
    } else {
        return nil;
    }
}

- (NSRange)safeRangeOfString:(NSString *)aString
{
    if (aString) {
        return [self rangeOfString:aString];
    } else {
        return NSMakeRange(0, 0);
    }
}

- (NSString *)safeStringByAppendingString:(NSString *)aString
{
    if (aString) {
        return [self stringByAppendingString:aString];
    } else {
        return self;
    }
}

@end

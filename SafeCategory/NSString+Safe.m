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
        return @"";
    }
}

- (NSString *)safeSubstringToIndex:(NSUInteger)to
{
    if (to <= self.length) {
        return [self substringToIndex:to];
    } else {
        return @"";
    }
}

- (NSString *)safeSubstringWithRange:(NSRange)range
{
    NSUInteger location = range.location;
    NSUInteger length = range.length;
    if (location+length > self.length) {
        return nil;
    } else {
        return [self substringWithRange:range];
    }
}

- (NSRange)safeRangeOfString:(NSString *)aString
{
    if (aString) {
        return [self rangeOfString:aString];
    } else {
        return NSMakeRange(NSNotFound, 0);
    }
}

- (NSRange)safeRangeOfString:(NSString *)aString options:(NSStringCompareOptions)mask
{
    if (aString ) {
        return [self rangeOfString:aString options:mask];
    } else {
        return NSMakeRange(NSNotFound, 0);
    }
}

- (NSString *)safeStringByAppendingString:(NSString *)aString
{
    if (aString) {
        return [self stringByAppendingString:aString];
    } else {
        return [self stringByAppendingString:@""];
    }
}

@end

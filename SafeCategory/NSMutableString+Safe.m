//
//  NSMutableString+safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSMutableString+Safe.h"

@implementation NSMutableString(Safe)

- (void)safeInsertString:(NSString *)aString atIndex:(NSUInteger)loc
{
    if (loc <= self.length) {
        [self insertString:aString atIndex:loc];
    }
}

- (void)safeAppendString:(NSString *)aString
{
    if ([aString isKindOfClass:[NSString class]]) {
        [self appendString:aString];
    }
}

- (void)safeSetString:(NSString *)aString
{
    if ([aString isKindOfClass:[NSString class]]) {
        [self setString:aString];
    }
}

- (NSUInteger)safeReplaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange
{
    NSUInteger location = searchRange.location;
    NSUInteger length = searchRange.length;
    
    if (target && replacement && location + length <= self.length) {
        return [self replaceOccurrencesOfString:target withString:replacement options:options range:searchRange];
    }else {
        return 0;
    }
}

@end

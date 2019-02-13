//
//  NSString+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Safe)

- (NSString *)safeSubstringFromIndex:(NSUInteger)from;

- (NSString *)safeSubstringToIndex:(NSUInteger)to;

- (NSString *)safeSubstringWithRange:(NSRange)range;

- (NSRange)safeRangeOfString:(NSString *)aString;

- (NSRange)safeRangeOfString:(NSString *)aString options:(NSStringCompareOptions)mask;

- (NSString *)safeStringByAppendingString:(NSString *)aString;

@end

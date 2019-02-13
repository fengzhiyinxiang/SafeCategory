//
//  NSMutableString+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableString(Safe)

- (void)safeInsertString:(NSString *)aString atIndex:(NSUInteger)loc;

- (void)safeAppendString:(NSString *)aString;

- (void)safeSetString:(NSString *)aString;

- (NSUInteger)safeReplaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;

@end

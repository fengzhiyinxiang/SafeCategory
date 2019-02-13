//
//  NSNumber+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Safe)

- (BOOL)safeIsEqualToNumber:(NSNumber *)number;

- (NSComparisonResult)safeCompare:(NSNumber *)otherNumber;

@end

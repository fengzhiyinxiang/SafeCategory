//
//  NSMutableDictionary+safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary(Safe)

- (void)safeSetObject:(id)aObj forKey:(id<NSCopying>)aKey
{
    if (aKey) {
        [self setObject:aObj forKey:aKey];
    }
}

- (id)safeObjectForKey:(id<NSCopying>)aKey
{
    if (aKey) {
        return [self objectForKey:aKey];
    } else {
        return nil;
    }
}

@end

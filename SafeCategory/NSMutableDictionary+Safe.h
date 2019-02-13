//
//  NSMutableDictionary+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary(Safe)

- (void)safeSetObject:(id)aObj forKey:(id<NSCopying>)aKey;

- (id)safeObjectForKey:(id<NSCopying>)aKey;

@end

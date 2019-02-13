//
//  NSMutableSet+Safe.m
//  Pods
//
//  Created by QF on 2019/1/21.
//

#import "NSMutableSet+Safe.h"

@implementation NSMutableSet (Safe)

- (void)safeAddObject:(id)object{
    if (object) {
        [self addObject:object];
    }
}

- (void)safeRemoveObject:(id)object{
    if (object) {
        [self removeObject:object];
    }
}

@end

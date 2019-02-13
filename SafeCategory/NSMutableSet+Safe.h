//
//  NSMutableSet+Safe.h
//  Pods
//
//  Created by QF on 2019/1/21.
//

#import <Foundation/Foundation.h>

@interface NSMutableSet (Safe)

- (void)safeAddObject:(id)object;

- (void)safeRemoveObject:(id)object;

@end

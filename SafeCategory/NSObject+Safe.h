//
//  NSObject+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

id SafeObject(id object,Class class);

NSNumber *SafeNumber(NSNumber *number);

NSString *SafeString(NSString *string);
NSMutableString *SafeMutableString(NSMutableString *mutableString);

NSData *SafeData(NSData *data);
NSMutableData *SafeMutableData(NSMutableData *mutableData);

NSSet *SafeSet(NSSet *set);
NSMutableSet *SafeMutableSet(NSMutableSet *mutableSet);

NSArray *SafeArray(NSArray *array);
NSMutableArray *SafeMutableArray(NSMutableArray *mutableArray);

NSDictionary *SafeDictionary(NSDictionary *dictionary);
NSMutableDictionary *SafeMutableDictionary(NSMutableDictionary *mutableDictionary);

@interface NSObject (Safe)

- (void)safeSetValue:(nullable id)value forKey:(NSString *)key;

- (nullable id)safeValueForKey:(NSString *)key;

@end





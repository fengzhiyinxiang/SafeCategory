//
//  NSObject+Safe.h
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import <Foundation/Foundation.h>

_Nullable id SafeObject(_Nullable id object,_Nullable Class class);

NSNumber *_Nullable SafeNumber(NSNumber * _Nullable number);

NSString *_Nullable SafeString(NSString * _Nullable string);
NSMutableString *_Nullable SafeMutableString(NSMutableString *_Nullable mutableString);

NSData *_Nullable SafeData(NSData *_Nullable data);
NSMutableData *_Nullable SafeMutableData(NSMutableData *_Nullable mutableData);

NSSet *_Nullable SafeSet(NSSet *_Nullable set);
NSMutableSet *_Nullable SafeMutableSet(NSMutableSet *_Nullable mutableSet);

NSArray *_Nullable SafeArray(NSArray *_Nullable array);
NSMutableArray *_Nullable SafeMutableArray(NSMutableArray *_Nullable mutableArray);

NSDictionary *_Nullable SafeDictionary(NSDictionary *_Nullable dictionary);
NSMutableDictionary *_Nullable SafeMutableDictionary(NSMutableDictionary *_Nullable mutableDictionary);

@interface NSObject (Safe)

- (void)safeSetValue:(nullable id)value forKey:(nullable NSString *)key;

- (nullable id)safeValueForKey:(nullable NSString *)key;

@end





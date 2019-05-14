//
//  NSObject+Safe.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "NSObject+Safe.h"
#import <objc/runtime.h>

id SafeObject(id object,Class aClass){
    if ([object isKindOfClass:aClass]) {
        return object;
    }else if([NSNumber isEqual:aClass]){
        return  [NSNumber numberWithInt:0];
    }else{
        return [aClass new];
    }
}

NSString *SafeString(NSString *string){
    return SafeObject(string, NSString.class);
}

NSMutableString *SafeMutableString(NSMutableString *mutableString){
    return SafeObject(mutableString, NSMutableString.class);
}

NSNumber *SafeNumber(NSNumber *number){
    return SafeObject(number, NSNumber.class);
}

NSData *SafeData(NSData *data){
    return SafeObject(data, NSData.class);
}

NSMutableData *SafeMutableData(NSMutableData *mutableData){
    return SafeObject(mutableData, NSMutableData.class);
}

NSSet *SafeSet(NSSet *set){
    return SafeObject(set, NSSet.class);
}

NSMutableSet *SafeMutableSet(NSMutableSet *mutableSet){
    return SafeObject(mutableSet, NSMutableSet.class);
}

NSArray *SafeArray(NSArray *array){
    return SafeObject(array, NSArray.class);
}

NSMutableArray *SafeMutableArray(NSMutableArray *mutableArray){
    return SafeObject(mutableArray, NSMutableArray.class);
}

NSDictionary *SafeDictionary(NSDictionary *dictionary){
    return SafeObject(dictionary, NSDictionary.class);
}

NSMutableDictionary *SafeMutableDictionary(NSMutableDictionary *mutableDictionary){
    return SafeObject(mutableDictionary, NSMutableDictionary.class);
}

@implementation NSObject (Safe)

- (void)safeSetValue:(nullable id)value forKey:(nullable NSString *)key{
    if ([key isKindOfClass:[NSString class]]) {
        NSString *selectorString = [NSString stringWithFormat:@"set%@:",[key capitalizedString]];
        if ([self respondsToSelector:NSSelectorFromString(selectorString)]) {
            [self setValue:value forKey:key];
        }
    }
}

- (nullable id)safeValueForKey:(nullable NSString *)key{
    if ([key isKindOfClass:[NSString class]]) {
        NSString *selectorString = [NSString stringWithFormat:@"%@",key];
        if ([self respondsToSelector:NSSelectorFromString(selectorString)]) {
            return  [self valueForKey:key];
        }
    }
    return nil;
}

@end



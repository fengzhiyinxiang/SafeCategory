//
//  ViewController.m
//  Example
//
//  Created by QF on 2018/12/20.
//  Copyright © 2018年 QF. All rights reserved.
//

#import "ViewController.h"
#import "SafeCategory.h"
#import "TestObject.h"

static NSString *nilString = nil;
static NSNumber *nilNumber = nil;

@interface ViewController ()

@end

@implementation ViewController

void TLogObject(id object){
    NSLog(@"\n\n%@:%@",NSStringFromClass([object class]),object);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testArraySafe];
//    [self testMutableArraySafe];
//    [self testMutableDictionarySafe];
//    [self testMutableSetSafe];
//    [self testMutableStringSafe];
//    [self testNumberSafe];
//    [self testStringSafe];
    [self testObjectSafe];
}

- (void)testArraySafe{
    NSString *string = @"NSArray";
    NSArray *array = @[string];
    
    @try {
        [array objectAtIndex:NSIntegerMax];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        id object = [array safeObjectAtIndex:NSIntegerMax];
        object = [array safeObjectAtIndex:0];
        TLogObject(object);
    } @finally {
        
    }
    
    @try {
        [array subarrayWithRange:NSMakeRange(0, NSIntegerMax)];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        NSArray *subArray = [array safeSubarrayWithRange:NSMakeRange(0, NSIntegerMax)];
        subArray = [array safeSubarrayWithRange:NSMakeRange(0, 1)];
        TLogObject(subArray);
    } @finally {
        
    }
    
    @try {
        [array indexOfObject:nilString];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        NSInteger index = [array safeIndexOfObject:nilString];
        index = [array safeIndexOfObject:string];
        TLogObject(@(index));
    } @finally {
        
    }
}

- (void)testMutableArraySafe{
    NSMutableArray *mutableArray = [NSMutableArray array];
    NSString *string = @"NSMutableArray";
    
    @try {
        [mutableArray addObject:nilString];
    } @catch (NSException *exception) {
        [mutableArray safeAddObject:[NSNull null]];
        [mutableArray safeAddObject:string];
        TLogObject(mutableArray);
    } @finally {
        
    }
    
    @try {
        [mutableArray insertObject:nilString atIndex:NSIntegerMax];
    } @catch (NSException *exception) {
        [mutableArray safeInsertObject:nilString atIndex:NSIntegerMax];
        [mutableArray safeInsertObject:string atIndex:0];
        TLogObject(mutableArray);
    } @finally {
        
    }
    
    @try {
        
    } @catch (NSException *exception) {
        [mutableArray safeInsertObjects:nil atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, NSIntegerMax)]];
        [mutableArray safeInsertObjects:@[string,string] atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)]];
        TLogObject(mutableArray);
    } @finally {
        
    }
    
    @try {
        
    } @catch (NSException *exception) {
        [mutableArray safeRemoveObjectAtIndex:NSIntegerMax];
        [mutableArray safeRemoveObjectAtIndex:0];
        TLogObject(mutableArray);
    } @finally {
        
    }
    
    @try {
        [mutableArray removeObjectsInRange:NSMakeRange(0, NSIntegerMax)];
    } @catch (NSException *exception) {
        [mutableArray safeRemoveObjectsInRange:NSMakeRange(0, NSIntegerMax)];
        [mutableArray safeRemoveObjectsInRange:NSMakeRange(0, 1)];
        TLogObject(mutableArray);
    } @finally {
        
    }
}

- (void)testMutableDictionarySafe{
    NSString *key = @"key";
    NSString *value = @"value";
    NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
    
    @try {
        id object = nil;
        [mutableDictionary setObject:object forKey:object];
    } @catch (NSException *exception) {
        [mutableDictionary safeSetObject:nil forKey:nil];
        [mutableDictionary safeSetObject:value forKey:key];
        TLogObject(mutableDictionary);
    } @finally {
        
    }
}

- (void)testMutableSetSafe{
    NSString *string = @"NSMutableSet";
    NSMutableSet *mutableSet = [NSMutableSet set];
    
    @try {
        id object = nil;
        [mutableSet addObject:object];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);

        [mutableSet safeAddObject:nil];
        [mutableSet safeAddObject:string];
        TLogObject(mutableSet);
    } @finally {
    }
    
    @try {
        id object = nil;
        [mutableSet removeObject:object];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);

        [mutableSet safeRemoveObject:nil];
        [mutableSet safeRemoveObject:string];
        TLogObject(mutableSet);
    } @finally {
        
    }
}

- (void)testMutableStringSafe{
    NSMutableString *mutableString = [NSMutableString stringWithString:@"NSMutableString"];
    @try {
        [mutableString insertString:@"insert" atIndex:NSIntegerMax];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        [mutableString safeInsertString:@"insert" atIndex:NSIntegerMax];
        [mutableString safeInsertString:@"insert" atIndex:mutableString.length];
        TLogObject(mutableString);
    } @finally {
        
    }
}

- (void)testNumberSafe{
    NSNumber *number = [NSNumber numberWithInt:0];
    
    @try {
        [number isEqualToNumber:nilNumber];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        [number safeIsEqualToNumber:nilNumber];
        BOOL isEqualToNumber = [number safeIsEqualToNumber:[NSNumber numberWithInt:0]];
        TLogObject(@(isEqualToNumber));
    } @finally {
        
    }
    
    @try {
        [number compare:nilNumber];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        [number safeCompare:nilNumber];
        NSComparisonResult comparisonResult = [number safeCompare:[NSNumber numberWithInt:0]];
        TLogObject(@(comparisonResult));
    } @finally {
        
    }
}

- (void)testStringSafe{
    NSString *string = @"NSString";
    
//    1
    @try {
        [string substringFromIndex:NSIntegerMax];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        [string safeSubstringFromIndex:NSIntegerMax];
        NSString *subString = [string safeSubstringFromIndex:1];
        TLogObject(subString);
    } @finally {
        
    }
    
//    2
    @try {
        [string substringToIndex:NSIntegerMax];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        [string safeSubstringToIndex:NSIntegerMax];
        NSString *subString = [string safeSubstringToIndex:1];
        TLogObject(subString);
    } @finally {
        
    }
    
//    3
    @try {
        [string substringWithRange:NSMakeRange(0, NSIntegerMax)];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        [string safeSubstringWithRange:NSMakeRange(0, NSIntegerMax)];
        NSString *subString = [string safeSubstringWithRange:NSMakeRange(0, 1)];
        TLogObject(subString);
    } @finally {
        
    }
    
//    4
    @try {
        [string rangeOfString:nilString];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        [string safeRangeOfString:nil];
        NSRange range = [string safeRangeOfString:@"string"];
        TLogObject(NSStringFromRange(range));
    } @finally {
        
    }
    
//    5
    @try {
        [string stringByAppendingString:nilString];
    } @catch (NSException *exception) {
        TLogObject(exception.reason);
        
        [string safeStringByAppendingString:nil];
        NSString *subString = [string safeStringByAppendingString:@"AppendingString"];
        TLogObject(subString);
    } @finally {
        
    }
}

- (void)testObjectSafe{
    NSDictionary *dictionary = @{
                                 @"NSString":SafeObject(nil,NSString.class),
                                 @"NSMutableString":SafeObject(nil,NSMutableString.class),
                                 @"NSNumber":SafeObject(nil,[NSNumber class]),
                                 @"NSArray":SafeObject(nil,NSArray.class),
                                 @"NSMutableArray":SafeObject(nil,NSMutableArray.class),
                                 @"NSDictionary":SafeObject(nil,NSDictionary.class),
                                 @"NSMutableDictionary":SafeObject(nil,NSMutableDictionary.class),
                                 @"NSObject":SafeObject(nil,NSObject.class),
                                 @"NSData":SafeObject(nil,NSData.class),
                                 @"NSMutableData":SafeObject(nil,NSMutableData.class),
                                 @"NSSet":SafeObject(nil,NSSet.class),
                                 @"NSMutableSet":SafeObject(nil,NSMutableSet.class),
                                 
                                 @"NSString":SafeString(nil),
                                 @"NSMutableString":SafeMutableString(nil),
                                 @"NSNumber":SafeNumber(nil),
                                 @"NSArray":SafeArray(nil),
                                 @"NSMutableArray":SafeMutableArray(nil),
                                 @"NSDictionary":SafeDictionary(nil),
                                 @"NSMutableDictionary":SafeMutableDictionary(nil),
                                 @"NSObject":SafeMutableString(nil),
                                 @"NSData":SafeData(nil),
                                 @"NSMutableData":SafeMutableData(nil),
                                 @"NSSet":SafeSet(nil),
                                 @"NSMutableSet":SafeMutableSet(nil),
                                 };
    
    TLogObject(dictionary);
    
    TestObject *testObject = [TestObject new];
    
    NSString *ageString = @"age";
    NSString *ageValueString = @"18";
    NSString *nameString = @"name";
    NSString *nameValueString = @"nameValue";

    @try {
        [testObject setValue:ageValueString forKey:ageString];
    } @catch (NSException *exception) {
        [testObject safeSetValue:ageValueString forKey:ageString];
        [testObject safeSetValue:nameValueString forKey:nameString];
    } @finally {
        
    }
    
    @try {
        [testObject valueForKey:ageString];
    } @catch (NSException *exception) {
        [testObject safeValueForKey:ageString];
        NSString *name = [testObject safeValueForKey:nameString];
        TLogObject(name);
    } @finally {
        
    }
}

@end

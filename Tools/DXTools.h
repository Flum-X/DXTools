//
//  DXTools.h
//  test
//
//  Created by DaXiong on 2018/12/4.
//  Copyright © 2018 DaXiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DXTools : NSObject

/*NSString类型数据 本地持久化*/
+ (void)saveToUserDefafutWithKey:(NSString *)key  withValue:(NSString *)value;

/*从本地获取NSString类型数据*/
+ (NSString *)readValueFromUserDefaultWithKey:(NSString *)key;

/*bool类型数据 本地持久化*/
+ (void)saveToUserDefafutWithKey:(NSString *)key withBoolValue:(BOOL)value;

/*从本地获取bool类型数据*/
+ (BOOL)readBoolValueFromUserDefaultWithKey:(NSString *)key;

/*NSInteger类型数据 本地持久化*/
+ (void)saveToUserDefafutWithKey:(NSString *)key withIntegerValue:(NSInteger)value;

/*从本地获取integer类型数据*/
+ (NSInteger)readIntegerValueFromUserDefaultWithKey:(NSString *)key;

/*double类型数据 本地持久化*/
+ (void)saveToUserDefafutWithKey:(NSString *)key withDoubleValue:(double)value;

/*！从本地获取double类型数据*/
+ (double)readDoubleValueFromUserDefaultWithKey:(NSString *)key;

/*清空对应key保存的数据*/
+ (void)removeObjectFromUserDefaultWithKey:(NSString *)key;

/*判断是否是空字符串*/
+ (BOOL)isNull:(id)object;

@end

NS_ASSUME_NONNULL_END

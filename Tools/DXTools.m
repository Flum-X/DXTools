//
//  DXTools.m
//  test
//
//  Created by DaXiong on 2018/12/4.
//  Copyright © 2018 DaXiong. All rights reserved.
//

#import "DXTools.h"

@implementation DXTools

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

/*!
 @author 15-07-09 11:07:53
 
 @brief  NSString类型数据 本地持久化
 
 @param key
 @param value
 
 @since 2.0.0
 */
+ (void)saveToUserDefafutWithKey:(NSString *)key  withValue:(NSString *)value
{
    value = [NSString stringWithFormat:@"%@",value];
    if ([DXTools isNull:value]) {
        value = @"";
    }
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

/*!
 @author 15-07-09 11:07:33
 
 @brief  从本地获取NSString类型数据
 
 @param key 对应的key
 
 @return
 
 @since 2.0.0
 */
+ (NSString *)readValueFromUserDefaultWithKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}

/*!
 @author 15-07-09 11:07:05
 
 @brief  bool类型数据 本地持久化
 
 @param key
 @param value
 
 @since 2.0.0
 */
+ (void)saveToUserDefafutWithKey:(NSString *)key withBoolValue:(BOOL)value
{
    [[NSUserDefaults standardUserDefaults]  setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


/*!
 @author 15-07-09 11:07:33
 
 @brief  从本地获取bool类型数据
 
 @param key 对应的key
 
 @return
 
 @since 2.0.0
 */
+ (BOOL)readBoolValueFromUserDefaultWithKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

/*!
 @author 15-07-09 11:07:05
 
 @brief  NSInteger类型数据 本地持久化
 
 @param key
 @param value
 
 @since 2.0.0
 */
+ (void)saveToUserDefafutWithKey:(NSString *)key withIntegerValue:(NSInteger)value
{
    [[NSUserDefaults standardUserDefaults]  setInteger:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/*!
 @author 15-07-09 11:07:33
 
 @brief  从本地获取integer类型数据
 
 @param key 对应的key
 
 @return
 
 @since 2.0.0
 */
+ (NSInteger)readIntegerValueFromUserDefaultWithKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

/*!
 @author 15-07-09 11:07:05
 
 @brief  double类型数据 本地持久化
 
 @param key
 @param value
 
 @since 2.0.0
 */
+ (void)saveToUserDefafutWithKey:(NSString *)key withDoubleValue:(double)value
{
    [[NSUserDefaults standardUserDefaults]  setDouble:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/*!
 @author 15-07-09 11:07:33
 
 @brief  从本地获取double类型数据
 
 @param key 对应的key
 
 @return
 
 @since 2.0.0
 */
+ (double)readDoubleValueFromUserDefaultWithKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}

/*清除key对应的object*/
+ (void)removeObjectFromUserDefaultWithKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/*!
 @author 15-07-09 11:07:24
 
 @brief  判断是否为空字符串
 
 @param object  NSString  NSNumber
 
 @return yes  or  no
 
 @since 1.0.0
 */
+ (BOOL)isNull:(id)object
{
    if ([object isKindOfClass:[NSNumber class]]) {
        object = [NSString stringWithFormat:@"%@",object];
    }
    // 判断是否为空串
    if ([object isEqual:[NSNull null]]) {
        return YES;
    }
    else if ([object isKindOfClass:[NSNull class]])
    {
        return YES;
    }
    else if (object==nil)
    {
        return YES;
    }else if ([object isEqualToString:@"<null>"]){
        return YES;
    }else if ([object isEqualToString:@"null"])
    {
        return YES;
    }
    else if ([object isEqualToString:@"(null)"])
    {
        return YES;
    }
    else if ([object isEqualToString:@""]){
        return YES;
    }
    return NO;
}

#pragma clang diagnostic pop

@end

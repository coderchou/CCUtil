//
//  CCDeviceUtil.h
//  DeviceType
//
//  Created by coderchou on 2018/8/13.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KISIphoneX (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size))

/**
 refer to https://www.theiphonewiki.com/wiki/Models#iPhone
 update by 2019.11.11
 */
typedef NS_ENUM(NSInteger,CCDeviceType) {
    Unknown = 0,
    
    Simulator,
    
    IPhone_2G,
    IPhone_3G,
    IPhone_3GS,
    IPhone_4,
    IPhone_4s,
    IPhone_5,
    IPhone_5C,
    IPhone_5S,
    IPhone_SE,
    IPhone_6,
    IPhone_6P,
    IPhone_6s,
    IPhone_6s_P,
    IPhone_7,
    IPhone_7P,
    IPhone_8,
    IPhone_8P,
    IPhone_X,
    IPhone_XR,
    IPhone_XS,
    IPhone_XS_Max,
    IPhone_11,
    IPhone_11_Pro,
    IPhone_11_Pro_MAX,
    
    IPod_Touch,
    IPod_Touch_2,
    IPod_Touch_3,
    IPod_Touch_4,
    IPod_Touch_5,
    IPod_Touch_6,
    IPod_Touch_7,
    
    IPad,
    IPad_2,
    IPad_3,
    IPad_4,
    IPad_5,
    IPad_6,
    
    IPad_Air,
    IPad_Air_2,
    IPad_Air_3,
    
    IPad_mini,
    IPad_mini_2,
    IPad_mini_3,
    IPad_mini_4,
    IPad_mini_5,
    
    IPad_Pro_9_7_inch,
    IPad_Pro_12_9_inch,
    IPad_Pro_12_9_inch_2nd_generation,
    IPad_Pro_12_9_inch_3nd_generation,
    IPad_Pro_10_5_inch,
    IPad_Pro_11_inch,
    
    Apple_Watch,  //Apple_Watch (1st generation)
    Apple_Watch_Series_1,
    Apple_Watch_Series_2,
    Apple_Watch_Series_3,
    Apple_Watch_Series_4,
};


@interface CCDeviceUtil : NSObject

/** 设备类型 */
+ (CCDeviceType)deviceModelType;

/** 设备型号 */
+ (NSString *)deviceModelName;

/** 设备名称 */
+ (NSString *)deviceName;


/**
 设备信息字典
 formate:
 @{
    @"name"           :  e.g. @""My iPhone"",
    @"model"          :  e.g. @"iPhone", @"iPod touch",
    @"localizedModel" :  localized version of model,
    @"systemName"     :  e.g. @"iOS",
    @"systemVersion"  :  e.g. @"4.0",
    @"platform"       :  e.g. @"iPhone X",
    @"batteryLevel"   :  0 .. 1.0. -1.0 if UIDeviceBatteryStateUnknown
 }
 */
+ (NSDictionary *)deviceInfoDictionary;

/** 获取设备唯一标识符, 与app有关,IDFV */
+ (NSString *)deviceUUID;

/** 系统版本 */
+ (NSString *)systemVersion;

/** app版本号, e.g. @"1.0.0" */
+ (NSString *)appVersion;

/** appbuild版本 */
+ (NSString *)appBuildVersion;

/** app名称 */
+ (NSString *)appName;

/** 判断设备是否为 Simulator */
+ (BOOL)isSimulator;

/** 判断设备是否为 iPhone X系列, 全面屏 */
+ (BOOL)is_iPhoneX_Series;
//+ (BOOL)isIPhoneX;

/** 判断真机是否越狱 */
+ (BOOL)isJailBreak;


@end

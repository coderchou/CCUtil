//
//  CCDeviceUtil.m
//  DeviceType
//
//  Created by coderchou on 2018/8/13.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import "CCDeviceUtil.h"
#import <sys/utsname.h>
#import <UIKit/UIKit.h>

@implementation CCDeviceUtil


+ (CCDeviceType)deviceModelType {
    
    NSString *platform = [self platform];
    
    //iPhone
    if([platform isEqualToString:@"iPhone1,1"])     return IPhone_2G;
    if([platform isEqualToString:@"iPhone1,2"])     return IPhone_3G;
    if([platform isEqualToString:@"iPhone2,1"])     return IPhone_3GS;
    if([platform isEqualToString:@"iPhone3,1"])     return IPhone_4;
    if([platform isEqualToString:@"iPhone3,2"])     return IPhone_4;
    if([platform isEqualToString:@"iPhone3,3"])     return IPhone_4;
    if([platform isEqualToString:@"iPhone4,1"])     return IPhone_4s;
    if([platform isEqualToString:@"iPhone5,1"])     return IPhone_5;
    if([platform isEqualToString:@"iPhone5,2"])     return IPhone_5;
    if([platform isEqualToString:@"iPhone5,3"])     return IPhone_5C;
    if([platform isEqualToString:@"iPhone5,4"])     return IPhone_5C;
    if([platform isEqualToString:@"iPhone6,1"])     return IPhone_5S;
    if([platform isEqualToString:@"iPhone6,2"])     return IPhone_5S;
    if([platform isEqualToString:@"iPhone7,1"])     return IPhone_6P;
    if([platform isEqualToString:@"iPhone7,2"])     return IPhone_6;
    if([platform isEqualToString:@"iPhone8,1"])     return IPhone_6s;
    if([platform isEqualToString:@"iPhone8,2"])     return IPhone_6s_P;
    if([platform isEqualToString:@"iPhone8,4"])     return IPhone_SE;
    if([platform isEqualToString:@"iPhone9,1"])     return IPhone_7;
    if([platform isEqualToString:@"iPhone9,3"])     return IPhone_7;
    if([platform isEqualToString:@"iPhone9,2"])     return IPhone_7P;
    if([platform isEqualToString:@"iPhone9,4"])     return IPhone_7P;
    if([platform isEqualToString:@"iPhone10,1"])    return IPhone_8;
    if([platform isEqualToString:@"iPhone10,4"])    return IPhone_8;
    if([platform isEqualToString:@"iPhone10,2"])    return IPhone_8P;
    if([platform isEqualToString:@"iPhone10,5"])    return IPhone_8P;
    if([platform isEqualToString:@"iPhone10,3"])    return IPhone_X;
    if([platform isEqualToString:@"iPhone10,6"])    return IPhone_X;
    
    //iPod Touch
    if([platform isEqualToString:@"iPod1,1"])   return IPod_Touch;
    if([platform isEqualToString:@"iPod2,1"])   return IPod_Touch_2;
    if([platform isEqualToString:@"iPod3,1"])   return IPod_Touch_3;
    if([platform isEqualToString:@"iPod4,1"])   return IPod_Touch_4;
    if([platform isEqualToString:@"iPod5,1"])   return IPod_Touch_5;
    if([platform isEqualToString:@"iPod7,1"])   return IPod_Touch_6;
    
    //iPad
    if([platform isEqualToString:@"iPad1,1"])   return IPad;
    if([platform isEqualToString:@"iPad2,1"])   return IPad_2;
    if([platform isEqualToString:@"iPad2,2"])   return IPad_2;
    if([platform isEqualToString:@"iPad2,3"])   return IPad_2;
    if([platform isEqualToString:@"iPad2,4"])   return IPad_2;
    if([platform isEqualToString:@"iPad3,1"])   return IPad_3;
    if([platform isEqualToString:@"iPad3,2"])   return IPad_3;
    if([platform isEqualToString:@"iPad3,3"])   return IPad_3;
    if([platform isEqualToString:@"iPad3,4"])   return IPad_4;
    if([platform isEqualToString:@"iPad3,5"])   return IPad_4;
    if([platform isEqualToString:@"iPad3,6"])   return IPad_4;
    //iPad 5 (2017)
    if([platform isEqualToString:@"iPad6,11"])  return IPad_5;
    if([platform isEqualToString:@"iPad6,12"])  return IPad_5;
    //iPad 6 (2018)
    if([platform isEqualToString:@"iPad7,5"])   return IPad_6;
    if([platform isEqualToString:@"iPad7,6"])   return IPad_6;
    
    
    //iPad Air
    if([platform isEqualToString:@"iPad4,1"])   return IPad_Air;
    if([platform isEqualToString:@"iPad4,2"])   return IPad_Air;
    if([platform isEqualToString:@"iPad4,3"])   return IPad_Air;
    if([platform isEqualToString:@"iPad5,3"])   return IPad_Air_2;
    if([platform isEqualToString:@"iPad5,4"])   return IPad_Air_2;
    
    //iPad mini
    if([platform isEqualToString:@"iPad2,5"])   return IPad_mini;
    if([platform isEqualToString:@"iPad2,6"])   return IPad_mini;
    if([platform isEqualToString:@"iPad2,7"])   return IPad_mini_1;
    if([platform isEqualToString:@"iPad4,4"])   return IPad_mini_2;
    if([platform isEqualToString:@"iPad4,5"])   return IPad_mini_2;
    if([platform isEqualToString:@"iPad4,6"])   return IPad_mini_2;
    if([platform isEqualToString:@"iPad4,7"])   return IPad_mini_3;
    if([platform isEqualToString:@"iPad4,8"])   return IPad_mini_3;
    if([platform isEqualToString:@"iPad4,9"])   return IPad_mini_3;
    if([platform isEqualToString:@"iPad5,1"])   return IPad_mini_4;
    if([platform isEqualToString:@"iPad5,2"])   return IPad_mini_4;
    
    
    //1th iPad Pro
    if([platform  isEqualToString:@"iPad6,3"])  return IPad_Pro_9_7_inch;
    if([platform  isEqualToString:@"iPad6,4"])  return IPad_Pro_9_7_inch;
    if([platform  isEqualToString:@"iPad6,7"])  return IPad_Pro_12_9_inch;
    if([platform  isEqualToString:@"iPad6,8"])  return IPad_Pro_12_9_inch;
    //2th iPad Pro
    if([platform  isEqualToString:@"iPad7,1"])  return IPad_Pro_12_9_inch_2nd_generation;
    if([platform  isEqualToString:@"iPad7,2"])  return IPad_Pro_12_9_inch_2nd_generation;
    if([platform  isEqualToString:@"iPad7,3"])  return IPad_Pro_10_5_inch;
    if([platform  isEqualToString:@"iPad7,4"])  return IPad_Pro_10_5_inch;
    
    //Apple Watch
    if([platform isEqualToString:@"Watch1,1"])   return Apple_Watch;   //(1st generation)
    if([platform isEqualToString:@"Watch1,2"])   return Apple_Watch;   //(1st generation)
    if([platform isEqualToString:@"Watch2,6"])   return Apple_Watch_Series_1;
    if([platform isEqualToString:@"Watch2,7"])   return Apple_Watch_Series_1;
    if([platform isEqualToString:@"Watch2,3"])   return Apple_Watch_Series_2;
    if([platform isEqualToString:@"Watch2,4"])   return Apple_Watch_Series_2;
    if([platform isEqualToString:@"Watch3,1"])   return Apple_Watch_Series_3;
    if([platform isEqualToString:@"Watch3,2"])   return Apple_Watch_Series_3;
    if([platform isEqualToString:@"Watch3,3"])   return Apple_Watch_Series_3;
    if([platform isEqualToString:@"Watch3,4"])   return Apple_Watch_Series_3;
    
    
    //iPhone Simulator
    if([platform isEqualToString:@"i386"])          return Simulator;
    if([platform isEqualToString:@"x86_64"])        return Simulator;
    
    return Unknown;
}



+ (NSString *)deviceModelName {
    
    NSString *platform = [self platform];
    
    //iPhone
    if([platform isEqualToString:@"iPhone1,1"])  return @"iPhone 2G";
    if([platform isEqualToString:@"iPhone1,2"])  return @"iPhone 3G";
    if([platform isEqualToString:@"iPhone2,1"])  return @"iPhone 3GS";
    if([platform isEqualToString:@"iPhone3,1"])  return @"iPhone 4";
    if([platform isEqualToString:@"iPhone3,2"])  return @"iPhone 4";
    if([platform isEqualToString:@"iPhone3,3"])  return @"iPhone 4";
    if([platform isEqualToString:@"iPhone4,1"])  return @"iPhone 4S";
    if([platform isEqualToString:@"iPhone5,1"])  return @"iPhone 5";
    if([platform isEqualToString:@"iPhone5,2"])  return @"iPhone 5";
    if([platform isEqualToString:@"iPhone5,3"])  return @"iPhone 5c";
    if([platform isEqualToString:@"iPhone5,4"])  return @"iPhone 5c";
    if([platform isEqualToString:@"iPhone6,1"])  return @"iPhone 5s";
    if([platform isEqualToString:@"iPhone6,2"])  return @"iPhone 5s";
    if([platform isEqualToString:@"iPhone7,1"])  return @"iPhone 6 Plus";
    if([platform isEqualToString:@"iPhone7,2"])  return @"iPhone 6";
    if([platform isEqualToString:@"iPhone8,1"])  return @"iPhone 6s";
    if([platform isEqualToString:@"iPhone8,2"])  return @"iPhone 6s Plus";
    if([platform isEqualToString:@"iPhone8,4"])  return @"iPhone SE";
    if([platform isEqualToString:@"iPhone9,1"])  return @"iPhone 7";         //CDMA
    if([platform isEqualToString:@"iPhone9,3"])  return @"iPhone 7";         //GSM
    if([platform isEqualToString:@"iPhone9,2"])  return @"iPhone 7 Plus";    //CDMA
    if([platform isEqualToString:@"iPhone9,4"])  return @"iPhone 7 Plus";    //GSM
    if([platform isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if([platform isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if([platform isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if([platform isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if([platform isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if([platform isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    
    //iPod Touch
    if([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch";
    if([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2";
    if([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3";
    if([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4)";
    if([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5";
    if([platform isEqualToString:@"iPod7,1"])   return @"iPod Touch 6";
    
    //iPad
    if([platform isEqualToString:@"iPad1,1"])   return @"iPad";
    if([platform isEqualToString:@"iPad2,1"])   return @"iPad 2";
    if([platform isEqualToString:@"iPad2,2"])   return @"iPad 2";
    if([platform isEqualToString:@"iPad2,3"])   return @"iPad 2";
    if([platform isEqualToString:@"iPad2,4"])   return @"iPad 2";
    if([platform isEqualToString:@"iPad3,1"])   return @"iPad 3";
    if([platform isEqualToString:@"iPad3,2"])   return @"iPad 3";
    if([platform isEqualToString:@"iPad3,3"])   return @"iPad 3";
    if([platform isEqualToString:@"iPad3,4"])   return @"iPad 4";
    if([platform isEqualToString:@"iPad3,5"])   return @"iPad 4";
    if([platform isEqualToString:@"iPad3,6"])   return @"iPad 4";
    //iPad 5 (2017)
    if([platform isEqualToString:@"iPad6,11"])  return @"iPad 5";
    if([platform isEqualToString:@"iPad6,12"])  return @"iPad 5";
    //iPad 6 (2018)
    if([platform isEqualToString:@"iPad7,5"])   return @"iPad 6";
    if([platform isEqualToString:@"iPad7,6"])   return @"iPad 6";
    
    
    //iPad Air
    if([platform isEqualToString:@"iPad4,1"])   return @"iPad Air";
    if([platform isEqualToString:@"iPad4,2"])   return @"iPad Air";
    if([platform isEqualToString:@"iPad4,3"])   return @"iPad Air";
    if([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2";
    if([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2";
    
    //iPad mini
    if([platform isEqualToString:@"iPad2,5"])   return @"iPad mini";
    if([platform isEqualToString:@"iPad2,6"])   return @"iPad mini";
    if([platform isEqualToString:@"iPad2,7"])   return @"iPad mini 1";
    if([platform isEqualToString:@"iPad4,4"])   return @"iPad mini 2";
    if([platform isEqualToString:@"iPad4,5"])   return @"iPad mini 2";
    if([platform isEqualToString:@"iPad4,6"])   return @"iPad mini 2";
    if([platform isEqualToString:@"iPad4,7"])   return @"iPad mini 3";
    if([platform isEqualToString:@"iPad4,8"])   return @"iPad mini 3";
    if([platform isEqualToString:@"iPad4,9"])   return @"iPad mini 3";
    if([platform isEqualToString:@"iPad5,1"])   return @"iPad mini 4";
    if([platform isEqualToString:@"iPad5,2"])   return @"iPad mini 4";
    
    
    //1th iPad Pro
    if([platform  isEqualToString:@"iPad6,3"])  return @"iPad Pro (9.7 inch)";
    if([platform  isEqualToString:@"iPad6,4"])  return @"iPad Pro (9.7 inch)";
    if([platform  isEqualToString:@"iPad6,7"])  return @"iPad Pro (12.9 inch)";
    if([platform  isEqualToString:@"iPad6,8"])  return @"iPad Pro (12.9 inch)";
    //2th iPad Pro
    if([platform  isEqualToString:@"iPad7,1"])  return @"iPad Pro (12.9-inch, 2nd generation)";
    if([platform  isEqualToString:@"iPad7,2"])  return @"iPad Pro (12.9-inch, 2nd generation)";
    if([platform  isEqualToString:@"iPad7,3"])  return @"iPad Pro (10.5 inch)";
    if([platform  isEqualToString:@"iPad7,4"])  return @"iPad Pro (10.5 inch)";
    
    
    //Apple Watch
    if([platform isEqualToString:@"Watch1,1"])   return @"Apple Watch";   //(1st generation)
    if([platform isEqualToString:@"Watch1,2"])   return @"Apple Watch";   //(1st generation)
    if([platform isEqualToString:@"Watch2,6"])   return @"Apple Watch Series 1";
    if([platform isEqualToString:@"Watch2,7"])   return @"Apple Watch Series 1";
    if([platform isEqualToString:@"Watch2,3"])   return @"Apple Watch Series 2";
    if([platform isEqualToString:@"Watch2,4"])   return @"Apple Watch Series 2";
    if([platform isEqualToString:@"Watch3,1"])   return @"Apple Watch Series 3";
    if([platform isEqualToString:@"Watch3,2"])   return @"Apple Watch Series 3";
    if([platform isEqualToString:@"Watch3,3"])   return @"Apple Watch Series 3";
    if([platform isEqualToString:@"Watch3,4"])   return @"Apple Watch Series 3";
    
    //iPhone Simulator
    if([platform isEqualToString:@"i386"])    return @"iPhone Simulator";
    if([platform isEqualToString:@"x86_64"])  return @"iPhone Simulator";
    
    return platform;
}

+ (NSString *)platform {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
}


+ (NSString *)deviceName {
    
    return [[UIDevice currentDevice] name];
}


+ (NSDictionary *)deviceInfoDictionary {
    [[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];
    NSString *batteryLevel = [NSString stringWithFormat:@"%lf",[UIDevice currentDevice].batteryLevel];
    [[UIDevice currentDevice] setBatteryMonitoringEnabled:NO];
    
    return @{
             @"name"           : [[UIDevice currentDevice] name],           // e.g. "My iPhone"
             @"model"          : [[UIDevice currentDevice] model],          // e.g. @"iPhone", @"iPod touch"
             @"localizedModel" : [[UIDevice currentDevice] localizedModel], // localized version of model
             @"systemName"     : [[UIDevice currentDevice] systemName],     // e.g. @"iOS"
             @"systemVersion"  : [[UIDevice currentDevice] systemVersion],  // e.g. @"4.0"
             @"platform"       : [self platform],
             @"batteryLevel"   :  batteryLevel //batteryLevel, 0 .. 1.0. -1.0 if UIDeviceBatteryStateUnknown
             };
}


+ (NSString *)deviceUUID {
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}


+ (NSString *)systemVersion {
    return [[UIDevice currentDevice] systemVersion];
}


+ (NSString *)appVersion {
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    return [infoDic objectForKey:@"CFBundleShortVersionString"];
}


+ (NSString *)appBuildVersion {
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    return [infoDic objectForKey:@"CFBundleVersion"];
}


+ (NSString *)appName {
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    return [infoDic objectForKey:@"CFBundleDisplayName"];
}



+ (BOOL)isIPhoneX{
    static BOOL isIPhoneX = NO;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
#if TARGET_IPHONE_SIMULATOR
        //根据进程信息获取模拟器型号
        NSString *platform = NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];
#else
        NSString *platform = [self platform];
#endif
        isIPhoneX = [platform isEqualToString:@"iPhone10,3"] || [platform isEqualToString:@"iPhone10,6"];
    });
    
    return isIPhoneX;
}


+ (BOOL)isIPhoneX2 {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    
    if([platform isEqualToString:@"i386"] || [platform isEqualToString:@"x86_64"]) {
        // 模拟器下采用屏幕的高度来判断
        return (CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(375, 812)) ||
                CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeMake(812, 375)));
    }
    
    BOOL isIPhoneX = [platform isEqualToString:@"iPhone10,3"] || [platform isEqualToString:@"iPhone10,6"];
    return isIPhoneX;
}


+ (BOOL)isJailBreak {
    
    NSArray *jailbreak_tool_paths = @[
                                      @"/Applications/Cydia.app",
                                      @"/Library/MobileSubstrate/MobileSubstrate.dylib",
                                      @"/bin/bash",
                                      @"/usr/sbin/sshd",
                                      @"/etc/apt"
                                      ];
    
    for (int i=0; i<jailbreak_tool_paths.count; i++) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:jailbreak_tool_paths[i]]) {
            NSLog(@"The device is jail broken!");
            return YES;
        }
    }
    NSLog(@"The device is NOT jail broken!");
    return NO;
}


@end


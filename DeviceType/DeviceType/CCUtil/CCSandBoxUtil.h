//
//  CCSandBoxUtil.h
//  DeviceType
//
//  Created by coderchou on 2018/8/16.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CCSandBoxDirectoryType) {
    CCSandBoxDirectoryTypeUnknow = 0,
    CCSandBoxDirectoryTypeBundle,   //bundle目录不支持创建文件夹
    CCSandBoxDirectoryTypeHome,
    CCSandBoxDirectoryTypeDocument,
    CCSandBoxDirectoryTypeLibrary,
    CCSandBoxDirectoryTypePreference,
    CCSandBoxDirectoryTypeCache,
    CCSandBoxDirectoryTypeTmp,
};

/**
 沙盒工具
 */
@interface CCSandBoxUtil : NSObject

/**
 bundle目录
 相对路径 : /
 */
+ (NSString *)bundlePath;


/**
 沙盒根目录
 相对路径 : /
 */
+ (NSString *)homePath;

/**
 文档目录 : 用来存放仅限于不可再生的数据文件，会被iTunes同步。
 相对路径 : /Documents
 */
+ (NSString *)documentPath;


/**
 Library目录 : 用来存放默认设置或其它状态信息，除Caches子目录之外的文件会被iTunes同步。
 相对路径     : /Library
 */
+ (NSString *)libraryPath;


/**
 配置目录 : 使用NSUserDefaults写的设置数据都会保存到该目录下的一个plist文件中，会被iTunes同步
 相对路径 : /Library/Preference
 */
+ (NSString *)preferencePath;


/**
 缓存目录 : 系统永远不会删除这里的文件，iTunes会删除
 相对路径 : /Library/Caches
 */
+ (NSString *)cachePath;

/**
 临时目录 : 用来存放应用再次启动时不需要的临时文件，该目录下的东西随时可能被系统清理掉，不会被iTunes同步。
 相对路径 : /tmp
 */
+ (NSString *)tmpPath;



/**
 获取沙盒指定目录路径
 */
+ (NSString *)pathForDirectoryType:(CCSandBoxDirectoryType)directoryType;


/** 在沙盒目录下创建文件夹便捷方法 */
+ (NSString *)mkdir:(NSString *)absolutePath;
+ (NSString *)rmdir:(NSString *)absolutePath;

+ (NSString *)mkdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType;
+ (NSString *)rmdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType;


@end
